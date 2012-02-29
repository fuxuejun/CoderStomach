package com.coderstomach.test;

import java.io.IOException;
import java.util.List;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.Field.Index;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.index.CorruptIndexException;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.IndexWriterConfig.OpenMode;
import org.apache.lucene.queryParser.ParseException;
import org.apache.lucene.queryParser.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.TopScoreDocCollector;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.LockObtainFailedException;
import org.apache.lucene.store.RAMDirectory;
import org.apache.lucene.util.Version;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.wltea.analyzer.lucene.IKAnalyzer;

import com.coderstomach.dao.IAnswerDAO;
import com.coderstomach.modal.Answer;

public class TestMain {
	private static Analyzer luceneAnalyzer = new IKAnalyzer();
    private static Directory indexDir = new RAMDirectory();
	/**
	 * @param args
	 * @throws IOException 
	 * @throws LockObtainFailedException 
	 * @throws CorruptIndexException 
	 * @throws ParseException 
	 */
	public static void main(String[] args) throws CorruptIndexException, LockObtainFailedException, IOException, ParseException {
		// TODO Auto-generated method stub
		ApplicationContext cx=new ClassPathXmlApplicationContext("spring-config.xml");
		IAnswerDAO dao=(IAnswerDAO)cx.getBean("answerDAO");
		List list=dao.getAnswerAll();
		
		//String indexPath="D:/index";
		IndexWriterConfig config=new IndexWriterConfig(Version.LUCENE_35, luceneAnalyzer);
		config.setOpenMode(OpenMode.CREATE);
		IndexWriter writer=new IndexWriter(indexDir, config);
		Document doc;
		Answer answer;
		for(Object o:list){
			answer=(Answer)o;
			doc=new Document();
			doc.add(new Field("answer_title",answer.getAnswerTitle(),Store.YES,Index.ANALYZED));
			doc.add(new Field("answer_no",answer.getAnswerNo(),Store.YES,Index.NO));
			writer.addDocument(doc);
		}
		writer.close();
		
		String queryString="123";
		String field="answer_title";
		QueryParser parser=new QueryParser(Version.LUCENE_35, field, luceneAnalyzer);
		Query query=parser.parse(queryString);
		IndexReader reader=IndexReader.open(indexDir);
		IndexSearcher searcher=new IndexSearcher(reader);
		TopScoreDocCollector results=TopScoreDocCollector.create(2, false);
		searcher.search(query, results);
		TopDocs topDocs = results.topDocs(0, 1);
		for(ScoreDoc scoreDoc:topDocs.scoreDocs){
			doc=searcher.doc(scoreDoc.doc);
			System.out.print(doc.get("answer_title"));
		}
	}

}

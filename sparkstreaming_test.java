import org.apache.spark.*;
import org.apache.spark.api.java.function;
import org.apache.spark.streaming;
import org.apache.spark.streaming.api.java.*;
import scala.Tuple2;

//create a local StreamingContext with two working thread and batch interval of 1 second
SparkConf conf = new SparkConf().setMaster("local").setAppName("NetworkWordCount")

//test for local file
//JavaSparkContext sc="./spark_test.txt"

//JavaStreamingContext jssc = new JavaStreamingContext(sc,Durations.seconds(1))
JavaStreamingContext jssc = new JavaStreamingContext(conf,Durations.seconds(1000))

//create a DStream thati will connect to hostname:port ,like localhost:9999
JavaReceiverInputDStream<String> line = jssc.socketTextStream("localhost",9999)

//split each line into words
JavaDStream<String> words = lines.flatMap(
	new FlatMapFunction<String,String>{
		@Override public Iterable<String> call(String x){
			return Arrays.asList(x.split(" "))
		}
	}
);


//count each word in each batch
JavaPairDStream<String ,Integer> pairs = words.map(
	new PairFunction<String,String,Integer>(){
		@Override public Tuple2<String,Integer> call(String s) throws Exception{
			return new Tuple2<String,Integer>(s,1);
		}
	}
);


wordcounts.print();

jssc.start(); //start computation
jssc.awaitTermination(); //wait for the computation to terminate



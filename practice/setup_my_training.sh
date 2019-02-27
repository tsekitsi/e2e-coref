cat train/* >> train.v4_gold_conll
cat development/* >> dev.v4_gold_conll
cat test/* >> test.v4_gold_conll

python ../minimize.py
python ../get_char_vocab.py

python ../filter_embeddings.py ../glove.840B.300d.txt train.v4_gold_conll dev.v4_gold_conll
python ../cache_elmo.py train.v4_gold_conll dev.v4_gold_conll

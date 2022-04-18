
extension ChunksList<E> on List<E>{
  List<List<E>> chunkList({int chunkSize = 3}){
    final _this = this;
    var chunks = <List<E>>[];
    for (var i = 0; i < _this.length; i += chunkSize) {
      chunks.add(sublist(i, i+chunkSize > length ? length : i + chunkSize));
    }
    return chunks;
  }
}
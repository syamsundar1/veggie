class Weight {
  int no;
  int weight;
  Weight({this.no, this.weight});

  static List<Weight> getWeight() {
    return <Weight>[
      Weight(no: 1, weight: 250),
      Weight(no: 2, weight: 500),
      Weight(no: 3, weight: 750),
      Weight(no: 4, weight: 1000),
    ];
  }
}

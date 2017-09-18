class Triangle
  def self.triangle(args)
    unless args.size == 3
      return '３辺の長さを指定してください'
    end

    sides = args.map {|arg| arg.to_f}
    short, middle, long = sides.sort
    if long >= short + middle
      return '三角形じゃないです＞＜'
    end

    case sides.uniq.size
    when 1
      return '正三角形ですね！'
    when 2
      return '二等辺三角形ですね！'
    when 3
      return '不等辺三角形ですね！'
    end
  end
end

puts Triangle.triangle(ARGV)

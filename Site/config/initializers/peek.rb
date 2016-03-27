unless Rails.env.test?
	Peek.into Peek::Views::PerformanceBar
	Peek.into Peek::Views::Mongo
	Peek.into Peek::Views::Git, :nwo => 'OrthoDex/Project'
end
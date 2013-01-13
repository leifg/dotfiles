Maid.rules do
  rule 'Mac OS X applications in disk images' do
    trash(dir('~/Downloads/*.dmg'))
  end

  rule 'Mac OS X applications in zip files' do
    found = dir('~/Downloads/*.zip').select { |path|
      zipfile_contents(path).any? { |c| c.match(/\.app$/) }
    }

    trash(found)
  end

  rule 'Old Downloads' do
    dir('~/Downloads/*').each do |path|
      if 1.week.since?(accessed_at(path))
        remove(path)
      end
    end
  end

  rule 'Old Movies' do
    dir('~/Movies/queuebrake/to_malter').each do |path|
      if 3.weeks.since?(accessed_at(path))
        remove(path)
      end
    end
  end
end

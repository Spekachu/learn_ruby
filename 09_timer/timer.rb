class Timer
    def initialize
        @seconds = 0
    end
    def seconds
        @seconds 
    end
    def seconds=(num)
        @seconds = num       
    end
    def time_string
      res=[]
      tt=@seconds.div(3600)
      if tt<10
         tt = '0' + tt.to_s
      end
      res.push(tt)
      tt=(@seconds-@seconds.div(3600)*3600).div(60)
      if tt<10
         tt = '0' + tt.to_s
      end
         res.push(tt)
         tt=@seconds-@seconds.div(3600)*3600-((@seconds-@seconds.div(3600)*3600).div(60))*60
      if tt<10
         tt = '0' + tt.to_s
      end
  res.push(tt)
  res.join(':')
  end
end
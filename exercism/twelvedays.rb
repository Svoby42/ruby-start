class TwelveDays
  PREFIX = "On the %{nth} day of Christmas my true love gave to me, %{items}\n"
  LYRICS = {
    first: 'a Partridge in a Pear Tree.',
    second: 'two Turtle Doves',
    third: 'three French Hens',
    fourth: 'four Calling Birds',
    fifth: 'five Gold Rings',
    sixth: 'six Geese-a-Laying',
    seventh: 'seven Swans-a-Swimming',
    eighth: 'eight Maids-a-Milking',
    ninth: 'nine Ladies Dancing',
    tenth: 'ten Lords-a-Leaping',
    eleventh: 'eleven Pipers Piping',
    twelfth: 'twelve Drummers Drumming'
  }
  DAYS = LYRICS.keys
end
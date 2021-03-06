-module(exo12).

-compile(export_all).

%% http://www.javascripter.net/math/calculators/divisorscalculator.htm
%% Answer : 76576500

exo12() -> test_triangular_number(1, 1).

test_triangular_number(TriangularNumber, Number) ->
  NbDivisors = nb_divisors(TriangularNumber),
  Number rem 100 == 0 andalso io:fwrite(integer_to_list(TriangularNumber)++" : "++integer_to_list(Number)++" : "++integer_to_list(NbDivisors)++"~n"),
  case NbDivisors > 500 of
    true -> TriangularNumber;
    false -> test_triangular_number(TriangularNumber + Number + 1, Number +1)
  end.

nb_divisors(Number) -> nb_divisors(Number, 0, 1).
nb_divisors(Number, NbDivisors, Current) when Current * 2 > Number ->
  NbDivisors + 1;
nb_divisors(Number, NbDivisors, Current) when Number rem Current == 0 ->
  nb_divisors(Number, NbDivisors + 1, Current+1);
nb_divisors(Number, NbDivisors, Current) ->
  nb_divisors(Number, NbDivisors, Current+1).

%% 5050 : 100 : 12
%% 20100 : 200 : 36
%% 45150 : 300 : 48
%% 80200 : 400 : 24
%% 125250 : 500 : 32
%% 180300 : 600 : 36
%% 245350 : 700 : 24
%% 320400 : 800 : 90
%% 405450 : 900 : 72
%% 500500 : 1000 : 96
%% 605550 : 1100 : 48
%% 720600 : 1200 : 48
%% 845650 : 1300 : 24
%% 980700 : 1400 : 72
%% 1125750 : 1500 : 64
%% 1280800 : 1600 : 36
%% 1445850 : 1700 : 144
%% 1620900 : 1800 : 54
%% 1805950 : 1900 : 24
%% 2001000 : 2000 : 128
%% 2206050 : 2100 : 96
%% 2421100 : 2200 : 72
%% 2646150 : 2300 : 96
%% 2881200 : 2400 : 150
%% 3126250 : 2500 : 40
%% 3381300 : 2600 : 162
%% 3646350 : 2700 : 96
%% 3921400 : 2800 : 48
%% 4206450 : 2900 : 48
%% 4501500 : 3000 : 48
%% 4806550 : 3100 : 48
%% 5121600 : 3200 : 168
%% 5446650 : 3300 : 48
%% 5781700 : 3400 : 72
%% 6126750 : 3500 : 96
%% 6481800 : 3600 : 144
%% 6846850 : 3700 : 24
%% 7221900 : 3800 : 144
%% 7606950 : 3900 : 96
%% 8002000 : 4000 : 40
%% 8407050 : 4100 : 48
%% 8822100 : 4200 : 72
%% 9247150 : 4300 : 96
%% 9682200 : 4400 : 192
%% 10127250 : 4500 : 96
%% 10582300 : 4600 : 72
%% 11047350 : 4700 : 48
%% 11522400 : 4800 : 72
%% 12007450 : 4900 : 108
%% 12502500 : 5000 : 60
%% 13007550 : 5100 : 48
%% 13522600 : 5200 : 96
%% 14047650 : 5300 : 144
%% 14582700 : 5400 : 144
%% 15127750 : 5500 : 32
%% 15682800 : 5600 : 120
%% 16247850 : 5700 : 48
%% 16822900 : 5800 : 36
%% 17407950 : 5900 : 96
%% 18003000 : 6000 : 128
%% 18608050 : 6100 : 24
%% 19223100 : 6200 : 216
%% 19848150 : 6300 : 72
%% 20483200 : 6400 : 96
%% 21128250 : 6500 : 128
%% 21783300 : 6600 : 288
%% 22448350 : 6700 : 24
%% 23123400 : 6800 : 96
%% 23808450 : 6900 : 96
%% 24503500 : 7000 : 48
%% 25208550 : 7100 : 96
%% 25923600 : 7200 : 180
%% 26648650 : 7300 : 72
%% 27383700 : 7400 : 72
%% 28128750 : 7500 : 80
%% 28883800 : 7600 : 96
%% 29648850 : 7700 : 192
%% 30423900 : 7800 : 144
%% 31208950 : 7900 : 24
%% 32004000 : 8000 : 288
%% 32809050 : 8100 : 60
%% 33624100 : 8200 : 72
%% 34449150 : 8300 : 48
%% 35284200 : 8400 : 192
%% 36129250 : 8500 : 32
%% 36984300 : 8600 : 144
%% 37849350 : 8700 : 192
%% 38724400 : 8800 : 120
%% 39609450 : 8900 : 144
%% 40504500 : 9000 : 72
%% 41409550 : 9100 : 96
%% 42324600 : 9200 : 96
%% 43249650 : 9300 : 96
%% 44184700 : 9400 : 144
%% 45129750 : 9500 : 64
%% 46084800 : 9600 : 84
%% 47049850 : 9700 : 48
%% 48024900 : 9800 : 405
%% 49009950 : 9900 : 72
%% 50005000 : 10000 : 80
%% 51010050 : 10100 : 192
%% 52025100 : 10200 : 108
%% 53050150 : 10300 : 24
%% 54085200 : 10400 : 120
%% 55130250 : 10500 : 64
%% 56185300 : 10600 : 36
%% 57250350 : 10700 : 144
%% 58325400 : 10800 : 192
%% 59410450 : 10900 : 48
%% 60505500 : 11000 : 192
%% 61610550 : 11100 : 96
%% 62725600 : 11200 : 144
%% 63850650 : 11300 : 48
%% 64985700 : 11400 : 144
%% 66130750 : 11500 : 128
%% 67285800 : 11600 : 144
%% 68450850 : 11700 : 72
%% 69625900 : 11800 : 36
%% 70810950 : 11900 : 96
%% 72006000 : 12000 : 160
%% 73211050 : 12100 : 36
%% 74426100 : 12200 : 216
%% 75651150 : 12300 : 48
%% 76576500

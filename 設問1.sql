SELECT    B.店舗名,
sum(REPLACE(A."売上高(K\)",",","")) as "売上高の合計(K\)"
FROM 売上データ as A
INNER JOIN 店舗 as B
ON A.店舗コード = B.店舗コード
GROUP BY A.店舗コード
ORDER BY   sum( A."売上高(K\)")  DESC;

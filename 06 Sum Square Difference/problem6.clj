(def a (atom 10))

(defn
(while (> 100 @a)
  (do (println @a)
  (swap! a inc))
  )
)
; in prog
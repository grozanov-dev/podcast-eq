;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core/#FilterPlugin"
;name "Mike EQ v2.0"
;action "Turning your mike to SM7b ;)"
;info "by Grefory A. Rozanoff.\nReleased under GPL v2."

;; Based on research by Julian Krause

;control mike "Mike" choice "Shure SM57, Behringer XM8500" 0
;control type "Type" choice "Linear, Proximity" 0

(if (= mike 1)
    (eq-band
        (eq-band
            (eq-band
                (eq-band
                    (if (= type 1)
                        (eq-lowshelf s 60 7.5)
                        (eq-band s 80 3.5 0.7))
                    220 -3.5 2.0)
                2700 -3.0 1.0)
        6400 -5.0 0.3)
    10400 -6.0 0.3)
    (eq-band
        (eq-band
            (eq-band
                (if (= type 1)
                    (eq-lowshelf s 160 4.0)
                    (eq-band s 100 2.0 1.0))
                4200 -3.0 1.6)
        6400 -5.0 0.3)
    10500 -4.0 0.3)
)
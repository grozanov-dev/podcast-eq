;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core/#FilterPlugin"
;name "Podcast voice EQ v2.0"
;action "Fine-tuning your voice"
;info "by Grefory A. Rozanoff.\nReleased under GPL v2."

;; Podcast voice EQ

;control type "Narrator" choice "Male, Female" 0

(eq-band
    (eq-band
        (if (= type 1)
            (eq-band
                (eq-band s 6000 2.0 1.4)
            1400 -3.0 0.7)
            (eq-band
                (eq-highshelf s 10200 2.0)
            5000 4.0 0.7)
        )
    240 -3.0 0.2)
20 -5.0 1.4)

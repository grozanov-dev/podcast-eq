;nyquist plug-in
;version 3
;type process
;name "K-Weight"
;action "K-Weighting..."

;; k-weight.ny by Gregory A. Rozanoff
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html .

(eq-highshelf (highpass2 s 100) 1000 4)
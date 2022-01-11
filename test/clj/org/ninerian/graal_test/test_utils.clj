(ns org.ninerian.graal-test.test-utils
  (:require
    [org.ninerian.graal-test.core :as core]))

(defn system-state []
  (or @core/system state/system))

(defn system-fixture
  []
  (fn [f]
    (when (nil? (system-state))
      (core/start-app {:opts {:profile :test}}))
    (f)))

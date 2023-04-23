use Lingy::Test;

test '(def v1 [:foo 123])',
     "user/v1";
test 'v1',
     '[:foo 123]';
test '(v1 0)',
     ':foo';
test '(v1 1)',
     '123';

test '(v1)',
     "Wrong number of args (0) passed to: 'lingy.lang.Vector'";
test '(v1 0 1)',
     "Wrong number of args (2) passed to: 'lingy.lang.Vector'";

test '((vector 3 6 9) (- 5 4))',
     '6';

test '(let [x ([42] 0)] x)',
     '42';

rep '(defn f1 [v] (let [x (v 0)] x))';
test '(f1 [3 4])',
     '3';

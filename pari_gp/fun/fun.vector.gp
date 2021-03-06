\\ fun.vector
\\                           wookay.noh at gmail.com

vecjoin(v, sp="") = {
  local(ret);
  ret = "";
  for(x=1, #v,
    ret = concat(ret, v[x]);
    if(x==#v, 0, ret = concat(ret, sp))
  );
  ret
}

vecsum(v) = {
  sum(x=1, #v, v[x])
}

CountedSet(v) = {
  local(keys);
  keys = [];
  for(i=1, #v, if(select(keys, x-> x==v[i])==[], keys=concat(keys, [v[i]]), 0));
  apply(k-> [k, #select(v, x-> x==k)], keys)
}

import React, { useState, useEffect } from "react";

import type { NextPage } from "next";
import { general } from "@app/shared-functions";

const Home: NextPage = () => {
  const [data, setData] = useState<any>(0);

  useEffect(() => {
    general.async_test().then((request_result: any) => {
      console.log(request_result.id);
      setData(request_result.id);
    });
  }, []);

  return <div>text from the file: {data}</div>;
};

export default Home;

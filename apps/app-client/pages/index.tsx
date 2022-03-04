import type { NextPage } from "next";
import { general } from "@app/shared-functions";

const Home: NextPage = () => {
  const result = general.test();
  console.log(result);

  return <div>Hello world</div>;
};

export default Home;

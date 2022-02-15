#include <boost/process.hpp>

#include <iostream>

using namespace boost::process;

int main()
{
	//get a handle to the current environment
	auto env = boost::this_process::environment();
	//add a variable to the current environment
	env["VALUE_1"] = "foo";

	//copy it into an environment separate to the one of this process
	boost::process::environment env_ = env;
	//append two values to a variable in the new env
	//env_["VALUE_2"] += {"bar1", "bar2"};
	env_["VALUE_2"] = "bar";

	//launch a process with `env_`
	boost::process::system("cmd", env_);
	// echo %VALUE_1%
	// foo
}
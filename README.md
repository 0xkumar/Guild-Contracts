# Organizations Management
### About
Organization Management is decentralised Platform for managing Organizations. It allows different Organizations to create and manage their own teams.

#### USE CASES
Suppose a Company wants to manage different teams and their respective Tasks of the Teams. The comapny can simply create an Organization  using our platform. The Manager can then manage their teams and assign tasks to them.

### Functionalities of the Manager
1. The Manager can Create teams, add team members, and assign tasks to the teams.
2. The Manager can also assign task to individual team members.
3. Once a task is assigned, the teams will complete and submit it.
4. The Manager can remove or add the Members if needed.
   
## Know Issues
The boom function in Organization contract doesn't actually delete the contract in EVM versions starting from Cancun. It has to be modified to set a flag which would restrict access to all of its functions.


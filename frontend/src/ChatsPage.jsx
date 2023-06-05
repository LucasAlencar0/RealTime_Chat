import { PrettyChatWindow } from "react-chat-engine-pretty";

const ChatsPage = (props) => {
  return (
    <div className="background">
      <PrettyChatWindow
        projectId='e04ab4b9-3724-4c9c-9d60-51dde859698b'
        username={props.user.username}
        secret={props.user.secret}
        style={{height: '100vh'}}
      />
    </div>
  );
};

export default ChatsPage;
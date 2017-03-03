.class Lcom/wepie/snake/module/home/skin/UserSkinManager$1;
.super Ljava/lang/Object;
.source "UserSkinManager.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/skin/UserSkinManager;->getServerSkin(Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;

.field final synthetic val$callback:Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/skin/UserSkinManager;Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/skin/UserSkinManager;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$1;->this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    iput-object p2, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$1;->val$callback:Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$1;->val$callback:Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$1;->val$callback:Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;->onFail(Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "skinIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$1;->this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    invoke-virtual {v0, p1}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->save2File(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$1;->this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    # getter for: Lcom/wepie/snake/module/home/skin/UserSkinManager;->mSkinIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->access$000(Lcom/wepie/snake/module/home/skin/UserSkinManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$1;->this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    # getter for: Lcom/wepie/snake/module/home/skin/UserSkinManager;->mSkinIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->access$000(Lcom/wepie/snake/module/home/skin/UserSkinManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$1;->val$callback:Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$1;->val$callback:Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;

    iget-object v1, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$1;->this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    invoke-virtual {v1}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getUserSkinInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;->onGetUserSkins(Ljava/util/ArrayList;)V

    .line 45
    :cond_0
    return-void
.end method

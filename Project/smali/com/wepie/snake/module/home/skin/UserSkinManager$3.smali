.class Lcom/wepie/snake/module/home/skin/UserSkinManager$3;
.super Ljava/lang/Object;
.source "UserSkinManager.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/skin/UserSkinManager;->initLocalData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/skin/UserSkinManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/skin/UserSkinManager;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$3;->this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 113
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
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
    .line 106
    .local p2, "skinIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$3;->this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    # getter for: Lcom/wepie/snake/module/home/skin/UserSkinManager;->mSkinIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->access$000(Lcom/wepie/snake/module/home/skin/UserSkinManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$3;->this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    # getter for: Lcom/wepie/snake/module/home/skin/UserSkinManager;->mSkinIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->access$000(Lcom/wepie/snake/module/home/skin/UserSkinManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    return-void
.end method

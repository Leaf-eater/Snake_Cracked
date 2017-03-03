.class public Lcom/wepie/snake/base/ActivityTaskManager;
.super Ljava/lang/Object;
.source "ActivityTaskManager.java"


# static fields
.field private static sInstance:Lcom/wepie/snake/base/ActivityTaskManager;


# instance fields
.field private activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/wepie/snake/base/ActivityTaskManager;

    invoke-direct {v0}, Lcom/wepie/snake/base/ActivityTaskManager;-><init>()V

    sput-object v0, Lcom/wepie/snake/base/ActivityTaskManager;->sInstance:Lcom/wepie/snake/base/ActivityTaskManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/base/ActivityTaskManager;->activityStack:Ljava/util/Stack;

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/wepie/snake/base/ActivityTaskManager;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/wepie/snake/base/ActivityTaskManager;->sInstance:Lcom/wepie/snake/base/ActivityTaskManager;

    return-object v0
.end method


# virtual methods
.method public finishAllActivitys()V
    .locals 1

    .prologue
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/wepie/snake/base/ActivityTaskManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/wepie/snake/base/ActivityTaskManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public popActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wepie/snake/base/ActivityTaskManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public pushActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wepie/snake/base/ActivityTaskManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

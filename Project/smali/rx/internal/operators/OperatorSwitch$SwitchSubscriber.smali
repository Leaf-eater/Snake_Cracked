.class final Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;
.super Lrx/Subscriber;
.source "OperatorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SwitchSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final TERMINAL_ERROR:Ljava/lang/Throwable;


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final delayError:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field final index:Ljava/util/concurrent/atomic/AtomicLong;

.field innerActive:Z

.field volatile mainDone:Z

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field producer:Lrx/Producer;

.field final queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/atomic/SpscLinkedArrayQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field requested:J

.field final ssub:Lrx/subscriptions/SerialSubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Terminal error"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->TERMINAL_ERROR:Ljava/lang/Throwable;

    return-void
.end method

.method constructor <init>(Lrx/Subscriber;Z)V
    .locals 2
    .param p2, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 102
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->child:Lrx/Subscriber;

    .line 103
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    .line 104
    iput-boolean p2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->delayError:Z

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    .line 106
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    .line 107
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 108
    return-void
.end method


# virtual methods
.method protected checkTerminated(ZZLjava/lang/Throwable;Lrx/internal/util/atomic/SpscLinkedArrayQueue;Lrx/Subscriber;Z)Z
    .locals 2
    .param p1, "localMainDone"    # Z
    .param p2, "localInnerActive"    # Z
    .param p3, "localError"    # Ljava/lang/Throwable;
    .param p6, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/Throwable;",
            "Lrx/internal/util/atomic/SpscLinkedArrayQueue",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/Subscriber",
            "<-TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p4, "localQueue":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    .local p5, "localChild":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v0, 0x1

    .line 359
    iget-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->delayError:Z

    if-eqz v1, :cond_1

    .line 360
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    if-eqz p6, :cond_3

    .line 361
    if-eqz p3, :cond_0

    .line 362
    invoke-virtual {p5, p3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 379
    :goto_0
    return v0

    .line 364
    :cond_0
    invoke-virtual {p5}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 369
    :cond_1
    if-eqz p3, :cond_2

    .line 370
    invoke-virtual {p4}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->clear()V

    .line 371
    invoke-virtual {p5, p3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 374
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    if-eqz p6, :cond_3

    .line 375
    invoke-virtual {p5}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 379
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method childRequested(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 258
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->producer:Lrx/Producer;

    .line 260
    .local v0, "p":Lrx/Producer;
    iget-wide v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->requested:J

    invoke-static {v2, v3, p1, p2}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->requested:J

    .line 261
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain()V

    .line 266
    return-void

    .line 261
    .end local v0    # "p":Lrx/Producer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method clearProducer()V
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 134
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->producer:Lrx/Producer;

    .line 135
    monitor-exit p0

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method complete(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 229
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 231
    monitor-exit p0

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->innerActive:Z

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->producer:Lrx/Producer;

    .line 235
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain()V

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method drain()V
    .locals 25

    .prologue
    .line 272
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 273
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    if-eqz v4, :cond_1

    .line 274
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->missed:Z

    .line 275
    monitor-exit p0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 278
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->innerActive:Z

    .line 279
    .local v6, "localInnerActive":Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->requested:J

    move-wide/from16 v22, v0

    .line 280
    .local v22, "localRequested":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    .line 281
    .local v7, "localError":Ljava/lang/Throwable;
    if-eqz v7, :cond_2

    sget-object v4, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->TERMINAL_ERROR:Ljava/lang/Throwable;

    if-eq v7, v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->delayError:Z

    if-nez v4, :cond_2

    .line 282
    sget-object v4, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->TERMINAL_ERROR:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    .line 284
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    move-object/from16 v0, p0

    iget-object v8, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    .line 287
    .local v8, "localQueue":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v19, v0

    .line 288
    .local v19, "localIndex":Ljava/util/concurrent/atomic/AtomicLong;
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->child:Lrx/Subscriber;

    .line 289
    .local v9, "localChild":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    .line 293
    .local v5, "localMainDone":Z
    :goto_1
    const-wide/16 v20, 0x0

    .line 295
    .local v20, "localEmission":J
    :cond_3
    :goto_2
    cmp-long v4, v20, v22

    if-eqz v4, :cond_4

    .line 296
    invoke-virtual {v9}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 300
    invoke-virtual {v8}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v10

    .local v10, "empty":Z
    move-object/from16 v4, p0

    .line 302
    invoke-virtual/range {v4 .. v10}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->checkTerminated(ZZLjava/lang/Throwable;Lrx/internal/util/atomic/SpscLinkedArrayQueue;Lrx/Subscriber;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 307
    if-eqz v10, :cond_7

    .line 321
    .end local v10    # "empty":Z
    :cond_4
    cmp-long v4, v20, v22

    if-nez v4, :cond_5

    .line 322
    invoke-virtual {v9}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    invoke-virtual {v8}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v17

    move-object/from16 v11, p0

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v17}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->checkTerminated(ZZLjava/lang/Throwable;Lrx/internal/util/atomic/SpscLinkedArrayQueue;Lrx/Subscriber;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 333
    :cond_5
    monitor-enter p0

    .line 335
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->requested:J

    move-wide/from16 v22, v0

    .line 336
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v4, v22, v12

    if-eqz v4, :cond_6

    .line 337
    sub-long v22, v22, v20

    .line 338
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->requested:J

    .line 341
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->missed:Z

    if-nez v4, :cond_8

    .line 342
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 343
    monitor-exit p0

    goto/16 :goto_0

    .line 353
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 284
    .end local v5    # "localMainDone":Z
    .end local v6    # "localInnerActive":Z
    .end local v7    # "localError":Ljava/lang/Throwable;
    .end local v8    # "localQueue":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    .end local v9    # "localChild":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v19    # "localIndex":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v20    # "localEmission":J
    .end local v22    # "localRequested":J
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 312
    .restart local v5    # "localMainDone":Z
    .restart local v6    # "localInnerActive":Z
    .restart local v7    # "localError":Ljava/lang/Throwable;
    .restart local v8    # "localQueue":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    .restart local v9    # "localChild":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v10    # "empty":Z
    .restart local v19    # "localIndex":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v20    # "localEmission":J
    .restart local v22    # "localRequested":J
    :cond_7
    invoke-virtual {v8}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;

    .line 313
    .local v18, "inner":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v8}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 315
    .local v24, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    # getter for: Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->id:J
    invoke-static/range {v18 .. v18}, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->access$000(Lrx/internal/operators/OperatorSwitch$InnerSubscriber;)J

    move-result-wide v14

    cmp-long v4, v12, v14

    if-nez v4, :cond_3

    .line 316
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 317
    const-wide/16 v12, 0x1

    add-long v20, v20, v12

    goto/16 :goto_2

    .line 345
    .end local v10    # "empty":Z
    .end local v18    # "inner":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    .end local v24    # "value":Ljava/lang/Object;, "TT;"
    :cond_8
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->missed:Z

    .line 347
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    .line 348
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->innerActive:Z

    .line 349
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    .line 350
    if-eqz v7, :cond_9

    sget-object v4, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->TERMINAL_ERROR:Ljava/lang/Throwable;

    if-eq v7, v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->delayError:Z

    if-nez v4, :cond_9

    .line 351
    sget-object v4, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->TERMINAL_ERROR:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    .line 353
    :cond_9
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method emit(Ljava/lang/Object;Lrx/internal/operators/OperatorSwitch$InnerSubscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/internal/operators/OperatorSwitch$InnerSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "inner":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    # getter for: Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->id:J
    invoke-static {p2}, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->access$000(Lrx/internal/operators/OperatorSwitch$InnerSubscriber;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 202
    monitor-exit p0

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain()V

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method error(Ljava/lang/Throwable;J)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "id"    # J

    .prologue
    .line 212
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->updateError(Ljava/lang/Throwable;)Z

    move-result v0

    .line 215
    .local v0, "success":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->innerActive:Z

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->producer:Lrx/Producer;

    .line 220
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain()V

    .line 226
    :goto_1
    return-void

    .line 218
    .end local v0    # "success":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "success":Z
    goto :goto_0

    .line 220
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 224
    .restart local v0    # "success":Z
    :cond_1
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->pluginError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method init()V
    .locals 2

    .prologue
    .line 111
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 112
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;-><init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 118
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$2;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$2;-><init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 130
    return-void
.end method

.method innerProducer(Lrx/Producer;J)V
    .locals 4
    .param p1, "p"    # Lrx/Producer;
    .param p2, "id"    # J

    .prologue
    .line 245
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 247
    monitor-exit p0

    .line 254
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-wide v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->requested:J

    .line 250
    .local v0, "n":J
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->producer:Lrx/Producer;

    .line 251
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    goto :goto_0

    .line 251
    .end local v0    # "n":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 195
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    .line 196
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain()V

    .line 197
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 165
    :try_start_0
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->updateError(Ljava/lang/Throwable;)Z

    move-result v0

    .line 166
    .local v0, "success":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    .line 169
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain()V

    .line 173
    :goto_0
    return-void

    .line 166
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 171
    .restart local v0    # "success":Z
    :cond_0
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->pluginError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 142
    .local v0, "id":J
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v4}, Lrx/subscriptions/SerialSubscription;->get()Lrx/Subscription;

    move-result-object v3

    .line 143
    .local v3, "s":Lrx/Subscription;
    if-eqz v3, :cond_0

    .line 144
    invoke-interface {v3}, Lrx/Subscription;->unsubscribe()V

    .line 149
    :cond_0
    monitor-enter p0

    .line 150
    :try_start_0
    new-instance v2, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;

    invoke-direct {v2, v0, v1, p0}, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;-><init>(JLrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V

    .line 152
    .local v2, "inner":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->innerActive:Z

    .line 153
    const/4 v4, 0x0

    iput-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->producer:Lrx/Producer;

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v4, v2}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 157
    invoke-virtual {p1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 158
    return-void

    .line 154
    .end local v2    # "inner":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method pluginError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 240
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 241
    return-void
.end method

.method updateError(Ljava/lang/Throwable;)Z
    .locals 6
    .param p1, "next"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    .line 177
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v4, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->TERMINAL_ERROR:Ljava/lang/Throwable;

    if-ne v0, v4, :cond_0

    .line 190
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return v2

    .line 180
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    if-nez v0, :cond_1

    .line 181
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    move v2, v3

    .line 190
    goto :goto_0

    .line 183
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    instance-of v4, v0, Lrx/exceptions/CompositeException;

    if-eqz v4, :cond_2

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Lrx/exceptions/CompositeException;

    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lrx/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 185
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    goto :goto_1

    .line 188
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v0, v5, v2

    aput-object p1, v5, v3

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    iput-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    goto :goto_1
.end method

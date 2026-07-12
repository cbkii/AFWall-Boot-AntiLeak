.class Lcom/raizlabs/android/dbflow/list/FlowQueryList$6;
.super Ljava/lang/Object;
.source "FlowQueryList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/list/FlowQueryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$6;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 656
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$6;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    const/4 v1, 0x0

    .line 657
    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->access$1502(Lcom/raizlabs/android/dbflow/list/FlowQueryList;Z)Z

    .line 658
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$6;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    .line 659
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->refresh()V

    return-void

    :catchall_0
    move-exception v0

    .line 658
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

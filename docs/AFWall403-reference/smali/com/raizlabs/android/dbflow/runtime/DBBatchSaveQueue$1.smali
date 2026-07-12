.class Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue$1;
.super Ljava/lang/Object;
.source "DBBatchSaveQueue.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue$1;->this$0:Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processModel(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 0

    .line 239
    instance-of p2, p1, Lcom/raizlabs/android/dbflow/structure/Model;

    if-eqz p2, :cond_0

    .line 240
    check-cast p1, Lcom/raizlabs/android/dbflow/structure/Model;

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/Model;->save()Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 244
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->save(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

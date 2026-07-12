.class Lcom/raizlabs/android/dbflow/structure/AsyncModel$5;
.super Ljava/lang/Object;
.source "AsyncModel.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raizlabs/android/dbflow/structure/AsyncModel;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raizlabs/android/dbflow/structure/AsyncModel;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/AsyncModel;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel$5;->this$0:Lcom/raizlabs/android/dbflow/structure/AsyncModel;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processModel(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel$5;->this$0:Lcom/raizlabs/android/dbflow/structure/AsyncModel;

    .line 138
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->access$000(Lcom/raizlabs/android/dbflow/structure/AsyncModel;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->load(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

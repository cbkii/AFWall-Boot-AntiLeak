.class abstract Lcom/raizlabs/android/dbflow/structure/NoModificationModel;
.super Ljava/lang/Object;
.source "NoModificationModel.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/ReadOnlyModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/structure/NoModificationModel$InvalidSqlViewOperationException;
    }
.end annotation


# instance fields
.field private transient adapter:Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/NoModificationModel;->getRetrievalAdapter()Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->exists(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public exists(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/NoModificationModel;->getRetrievalAdapter()Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public getRetrievalAdapter()Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/NoModificationModel;->adapter:Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getInstanceAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/NoModificationModel;->adapter:Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/NoModificationModel;->adapter:Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;

    return-object v0
.end method

.method public load()V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/NoModificationModel;->getRetrievalAdapter()Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->load(Ljava/lang/Object;)V

    return-void
.end method

.method public load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/NoModificationModel;->getRetrievalAdapter()Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->load(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

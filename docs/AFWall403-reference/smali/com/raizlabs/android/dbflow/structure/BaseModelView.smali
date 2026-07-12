.class public abstract Lcom/raizlabs/android/dbflow/structure/BaseModelView;
.super Lcom/raizlabs/android/dbflow/structure/NoModificationModel;
.source "BaseModelView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/NoModificationModel;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic exists()Z
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/structure/NoModificationModel;->exists()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic exists(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/structure/NoModificationModel;->exists(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getRetrievalAdapter()Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/structure/NoModificationModel;->getRetrievalAdapter()Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load()V
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/structure/NoModificationModel;->load()V

    return-void
.end method

.method public bridge synthetic load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/structure/NoModificationModel;->load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.class Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider$1;
.super Ljava/lang/Object;
.source "BaseContentProvider.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;

.field final synthetic val$count:[I

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:[Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;[Landroid/content/ContentValues;[ILandroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider$1;->this$0:Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider$1;->val$values:[Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider$1;->val$count:[I

    iput-object p4, p0, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider$1;->val$uri:Landroid/net/Uri;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 8

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider$1;->val$values:[Landroid/content/ContentValues;

    .line 61
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider$1;->val$count:[I

    .line 62
    aget v5, v4, v1

    iget-object v6, p0, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider$1;->this$0:Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;

    iget-object v7, p0, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3}, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;->bulkInsert(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v3

    add-int/2addr v5, v3

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

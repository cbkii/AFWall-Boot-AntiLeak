.class Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "LogDetailRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->bind(Ldev/ukanth/ufirewall/log/LogData;Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;

.field final synthetic val$item:Ldev/ukanth/ufirewall/log/LogData;

.field final synthetic val$listener:Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder$1;->this$0:Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;

    iput-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder$1;->val$listener:Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;

    iput-object p3, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder$1;->val$item:Ldev/ukanth/ufirewall/log/LogData;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder$1;->val$listener:Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder$1;->val$item:Ldev/ukanth/ufirewall/log/LogData;

    .line 263
    invoke-interface {p1, v0}, Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;->onItemClick(Ldev/ukanth/ufirewall/log/LogData;)V

    return-void
.end method

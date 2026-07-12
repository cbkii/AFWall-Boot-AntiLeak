.class Ldev/ukanth/ufirewall/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/MainActivity;->search(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/MainActivity;

.field final synthetic val$filterText:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$99SSNFdx5jKM2mplzDcFInx6t3s(Ldev/ukanth/ufirewall/MainActivity$10;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$10;->lambda$onMenuItemActionExpand$0(Landroid/widget/EditText;)V

    return-void
.end method

.method constructor <init>(Ldev/ukanth/ufirewall/MainActivity;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$10;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    iput-object p2, p0, Ldev/ukanth/ufirewall/MainActivity$10;->val$filterText:Landroid/widget/EditText;

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onMenuItemActionExpand$0(Landroid/widget/EditText;)V
    .locals 2

    .line 1358
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$10;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    const-string v1, "input_method"

    .line 1359
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    .line 1360
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$10;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 1351
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mselectFilterGroup(Ldev/ukanth/ufirewall/MainActivity;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$10;->val$filterText:Landroid/widget/EditText;

    .line 1357
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$10$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ldev/ukanth/ufirewall/MainActivity$10$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/MainActivity$10;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

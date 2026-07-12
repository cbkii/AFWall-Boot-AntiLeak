.class Ldev/ukanth/ufirewall/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/MainActivity;->initTextWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/MainActivity;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$4;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$4;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 382
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mshowApplications(Ldev/ukanth/ufirewall/MainActivity;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Ldev/ukanth/ufirewall/MainActivity$4;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 392
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mshowApplications(Ldev/ukanth/ufirewall/MainActivity;Ljava/lang/String;)V

    return-void
.end method

.class Ldev/ukanth/ufirewall/preferences/PreferencesActivity$2;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->prepareLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/preferences/PreferencesActivity;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/preferences/PreferencesActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/PreferencesActivity$2;->this$0:Ldev/ukanth/ufirewall/preferences/PreferencesActivity;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/PreferencesActivity$2;->this$0:Ldev/ukanth/ufirewall/preferences/PreferencesActivity;

    .line 188
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->finish()V

    return-void
.end method

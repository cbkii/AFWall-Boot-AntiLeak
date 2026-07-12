.class Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$5;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "RulesPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$5;->this$0:Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;

    .line 219
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 0

    .line 222
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    return-void
.end method

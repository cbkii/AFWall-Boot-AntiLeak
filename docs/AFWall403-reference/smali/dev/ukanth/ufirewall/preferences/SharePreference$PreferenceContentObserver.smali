.class Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver;
.super Landroid/database/ContentObserver;
.source "SharePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/preferences/SharePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferenceContentObserver"
.end annotation


# instance fields
.field private final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ldev/ukanth/ufirewall/preferences/SharePreference;


# direct methods
.method private constructor <init>(Ldev/ukanth/ufirewall/preferences/SharePreference;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver;->this$0:Ldev/ukanth/ufirewall/preferences/SharePreference;

    .line 273
    invoke-static {p1}, Ldev/ukanth/ufirewall/preferences/SharePreference;->-$$Nest$fgetmHandler(Ldev/ukanth/ufirewall/preferences/SharePreference;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 274
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Ldev/ukanth/ufirewall/preferences/SharePreference;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver;-><init>(Ldev/ukanth/ufirewall/preferences/SharePreference;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 284
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver;->mListener:Ljava/lang/ref/WeakReference;

    .line 285
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-nez p2, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver;->this$0:Ldev/ukanth/ufirewall/preferences/SharePreference;

    .line 287
    invoke-static {p1}, Ldev/ukanth/ufirewall/preferences/SharePreference;->-$$Nest$fgetmContext(Ldev/ukanth/ufirewall/preferences/SharePreference;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver;->this$0:Ldev/ukanth/ufirewall/preferences/SharePreference;

    .line 289
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

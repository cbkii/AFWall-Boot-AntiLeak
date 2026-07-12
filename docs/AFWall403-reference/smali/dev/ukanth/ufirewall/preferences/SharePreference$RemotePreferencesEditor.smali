.class Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;
.super Ljava/lang/Object;
.source "SharePreference.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/preferences/SharePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemotePreferencesEditor"
.end annotation


# instance fields
.field private final mToAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mToRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ldev/ukanth/ufirewall/preferences/SharePreference;


# direct methods
.method private constructor <init>(Ldev/ukanth/ufirewall/preferences/SharePreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->this$0:Ldev/ukanth/ufirewall/preferences/SharePreference;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->mToAdd:Ljava/util/List;

    .line 187
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->mToRemove:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ldev/ukanth/ufirewall/preferences/SharePreference;Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;-><init>(Ldev/ukanth/ufirewall/preferences/SharePreference;)V

    return-void
.end method

.method private add(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 2

    .line 190
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "key"

    .line 191
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    .line 192
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->mToAdd:Ljava/util/List;

    .line 193
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public apply()V
    .locals 0

    .line 265
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->commit()Z

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    const-string v0, ""

    .line 248
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public commit()Z
    .locals 4

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->mToRemove:Ljava/util/Set;

    .line 253
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->this$0:Ldev/ukanth/ufirewall/preferences/SharePreference;

    .line 254
    invoke-static {v2}, Ldev/ukanth/ufirewall/preferences/SharePreference;->-$$Nest$fgetmBaseUri(Ldev/ukanth/ufirewall/preferences/SharePreference;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->this$0:Ldev/ukanth/ufirewall/preferences/SharePreference;

    .line 255
    invoke-static {v2}, Ldev/ukanth/ufirewall/preferences/SharePreference;->-$$Nest$fgetmContext(Ldev/ukanth/ufirewall/preferences/SharePreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->mToAdd:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/ContentValues;

    .line 257
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->this$0:Ldev/ukanth/ufirewall/preferences/SharePreference;

    .line 258
    invoke-static {v1}, Ldev/ukanth/ufirewall/preferences/SharePreference;->-$$Nest$fgetmBaseUri(Ldev/ukanth/ufirewall/preferences/SharePreference;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->this$0:Ldev/ukanth/ufirewall/preferences/SharePreference;

    .line 259
    invoke-static {v2}, Ldev/ukanth/ufirewall/preferences/SharePreference;->-$$Nest$fgetmContext(Ldev/ukanth/ufirewall/preferences/SharePreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    const/4 v0, 0x1

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    const/4 v0, 0x6

    .line 235
    invoke-direct {p0, p1, v0}, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->add(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    .line 236
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "value"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    const/4 v0, 0x5

    .line 228
    invoke-direct {p0, p1, v0}, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->add(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    const-string v0, "value"

    .line 229
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    const/4 v0, 0x3

    .line 214
    invoke-direct {p0, p1, v0}, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->add(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    const-string v0, "value"

    .line 215
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    const/4 v0, 0x4

    .line 221
    invoke-direct {p0, p1, v0}, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->add(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    const-string v0, "value"

    .line 222
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, p1, v0}, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->add(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    const-string v0, "value"

    .line 200
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 207
    invoke-direct {p0, p1, v0}, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->add(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    const-string v0, "value"

    .line 208
    invoke-static {p2}, Ldev/ukanth/ufirewall/preferences/ShareUtils;->serializeStringSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;->mToRemove:Ljava/util/Set;

    .line 242
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

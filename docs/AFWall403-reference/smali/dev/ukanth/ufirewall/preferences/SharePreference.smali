.class public Ldev/ukanth/ufirewall/preferences/SharePreference;
.super Ljava/lang/Object;
.source "SharePreference.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;,
        Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver;
    }
.end annotation


# instance fields
.field private final mBaseUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmBaseUri(Ldev/ukanth/ufirewall/preferences/SharePreference;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mBaseUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Ldev/ukanth/ufirewall/preferences/SharePreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Ldev/ukanth/ufirewall/preferences/SharePreference;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "content://"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mBaseUri:Landroid/net/Uri;

    .line 47
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mListeners:Ljava/util/WeakHashMap;

    return-void
.end method

.method private containsKey(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mBaseUri:Landroid/net/Uri;

    .line 153
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string p1, "type"

    .line 154
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 157
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 160
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_0
    throw v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 160
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0
.end method

.method private getValue(Landroid/database/Cursor;II)Ljava/lang/Object;
    .locals 1

    .line 166
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    .line 181
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid expected type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 179
    :pswitch_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 177
    :pswitch_1
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 175
    :pswitch_2
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 173
    :pswitch_3
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 171
    :pswitch_4
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/preferences/ShareUtils;->deserializeStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 169
    :pswitch_5
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private queryAll()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mBaseUri:Landroid/net/Uri;

    .line 132
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v0, "type"

    const-string v1, "value"

    const-string v3, "key"

    .line 133
    filled-new-array {v3, v0, v1}, [Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 136
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    .line 140
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 142
    invoke-direct {p0, v0, v4, v5}, Ldev/ukanth/ufirewall/preferences/SharePreference;->getValue(Landroid/database/Cursor;II)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 147
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_4
    throw v1
.end method

.method private querySingle(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mBaseUri:Landroid/net/Uri;

    .line 113
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string p1, "type"

    const-string v0, "value"

    .line 114
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 117
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ne p2, p3, :cond_2

    const/4 p2, 0x1

    .line 122
    invoke-direct {p0, p1, v0, p2}, Ldev/ukanth/ufirewall/preferences/SharePreference;->getValue(Landroid/database/Cursor;II)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 126
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    .line 120
    :cond_2
    :try_start_1
    new-instance p2, Ljava/lang/ClassCastException;

    const-string p3, "Preference type mismatch"

    invoke-direct {p2, p3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_3

    .line 126
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_3
    throw p2

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 126
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p2
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/SharePreference;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 93
    new-instance v0, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor;-><init>(Ldev/ukanth/ufirewall/preferences/SharePreference;Ldev/ukanth/ufirewall/preferences/SharePreference$RemotePreferencesEditor-IA;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/SharePreference;->queryAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 83
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0}, Ldev/ukanth/ufirewall/preferences/SharePreference;->querySingle(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 78
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Ldev/ukanth/ufirewall/preferences/SharePreference;->querySingle(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Ldev/ukanth/ufirewall/preferences/SharePreference;->querySingle(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 73
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x4

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/preferences/SharePreference;->querySingle(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, p1, p2, v0}, Ldev/ukanth/ufirewall/preferences/SharePreference;->querySingle(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 63
    invoke-direct {p0, p1, p2, v0}, Ldev/ukanth/ufirewall/preferences/SharePreference;->querySingle(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/preferences/ShareUtils;->toStringSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mListeners:Ljava/util/WeakHashMap;

    .line 98
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver;-><init>(Ldev/ukanth/ufirewall/preferences/SharePreference;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver-IA;)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mListeners:Ljava/util/WeakHashMap;

    .line 100
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mBaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mListeners:Ljava/util/WeakHashMap;

    .line 106
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/ukanth/ufirewall/preferences/SharePreference$PreferenceContentObserver;

    if-eqz p1, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreference;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

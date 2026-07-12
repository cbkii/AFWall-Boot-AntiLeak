.class public abstract Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;
.super Landroid/content/ContentProvider;
.source "SharePreferenceProvider.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "dev.ukanth.ufirewall.donate"

.field private static final PREFERENCES_ID:I = 0x1

.field private static final PREFERENCE_ID:I = 0x2


# instance fields
.field private final mBaseUri:Landroid/net/Uri;

.field private final mPrefNames:[Ljava/lang/String;

.field private final mPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 3

    .line 59
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "content://dev.ukanth.ufirewall.donate"

    .line 60
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->mBaseUri:Landroid/net/Uri;

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->mPrefNames:[Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    array-length p1, p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->mPreferences:Ljava/util/Map;

    .line 63
    new-instance p1, Landroid/content/UriMatcher;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v0, "*/"

    const/4 v1, 0x1

    const-string v2, "dev.ukanth.ufirewall.donate"

    .line 64
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "*/*"

    const/4 v1, 0x2

    .line 65
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private buildRow([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .line 192
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 194
    aget-object v3, p1, v2

    const-string v4, "key"

    .line 195
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    aput-object p2, v1, v2

    goto :goto_1

    :cond_0
    const-string v4, "type"

    .line 197
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    invoke-direct {p0, p3}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->getPrefType(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1

    :cond_1
    const-string v4, "value"

    .line 199
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    invoke-static {p3}, Ldev/ukanth/ufirewall/preferences/ShareUtils;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid column name: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object v1
.end method

.method private getPrefType(Ljava/lang/Object;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 182
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 183
    :cond_1
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 184
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 185
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 186
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    const/4 p1, 0x5

    return p1

    .line 187
    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 p1, 0x6

    return p1

    .line 188
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown preference type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private getPreferences(Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;Z)Landroid/content/SharedPreferences;
    .locals 3

    .line 209
    invoke-static {p1}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;->-$$Nest$fgetname(Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {p1}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;->-$$Nest$fgetkey(Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->mPreferences:Ljava/util/Map;

    .line 211
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {p0, v0, p1, p2}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->checkAccess(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v1

    .line 216
    :cond_0
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Insufficient permissions to access: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 213
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unknown preference file name: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getPreferencesName(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->mPreferences:Ljava/util/Map;

    .line 222
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 227
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cannot find name for SharedPreferences"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private parseUri(Landroid/net/Uri;)Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;
    .locals 4

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 167
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    .line 172
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-ne v0, v2, :cond_2

    .line 175
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 177
    :goto_1
    new-instance v0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;

    const/4 v1, 0x0

    invoke-direct {v0, v3, p1, v1}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;-><init>(Ljava/lang/String;Ljava/lang/String;Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair-IA;)V

    return-object v0
.end method


# virtual methods
.method protected checkAccess(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->parseUri(Landroid/net/Uri;)Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;

    move-result-object p1

    .line 143
    invoke-static {p1}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;->-$$Nest$fgetkey(Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    .line 144
    invoke-direct {p0, p1, p3}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->getPreferences(Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;Z)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_0

    .line 146
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 148
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 106
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->parseUri(Landroid/net/Uri;)Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;

    move-result-object v0

    .line 107
    invoke-static {v0}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;->-$$Nest$fgetkey(Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "key"

    .line 109
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "type"

    .line 111
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "value"

    .line 112
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Ldev/ukanth/ufirewall/preferences/ShareUtils;->deserialize(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x1

    .line 113
    invoke-direct {p0, v0, v2}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->getPreferences(Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p2, :cond_7

    .line 117
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 118
    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 119
    :cond_1
    instance-of v2, p2, Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 121
    invoke-static {p2}, Ldev/ukanth/ufirewall/preferences/ShareUtils;->toStringSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 125
    :cond_2
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 126
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 127
    :cond_3
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 128
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 129
    :cond_4
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 130
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 131
    :cond_5
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    .line 132
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p1

    .line 134
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot set preference with type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attempting to insert preference with null value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 8

    .line 70
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->mPrefNames:[Ljava/lang/String;

    .line 71
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 72
    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 73
    invoke-interface {v6, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v7, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->mPreferences:Ljava/util/Map;

    .line 74
    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 161
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->getPreferencesName(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->mBaseUri:Landroid/net/Uri;

    .line 162
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 163
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->parseUri(Landroid/net/Uri;)Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;

    move-result-object p1

    const/4 p3, 0x0

    .line 82
    invoke-direct {p0, p1, p3}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->getPreferences(Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;Z)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 83
    invoke-interface {p3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p3

    .line 84
    new-instance p4, Landroid/database/MatrixCursor;

    invoke-direct {p4, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;->-$$Nest$fgetkey(Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    if-nez p5, :cond_0

    .line 86
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 88
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    .line 89
    invoke-direct {p0, p2, p5, p3}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->buildRow([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p1}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;->-$$Nest$fgetkey(Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 94
    invoke-direct {p0, p2, p1, p3}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->buildRow([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    return-object p4
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 155
    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 p1, 0x0

    return p1
.end method

.class public Ldev/ukanth/ufirewall/activity/ProfileActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ProfileActivity.java"


# static fields
.field protected static final MENU_ADD:I = 0x64

.field protected static final MENU_CLONE:I = 0x68

.field protected static final MENU_DELETE:I = 0x66

.field protected static final MENU_RENAME:I = 0x67


# instance fields
.field profileAdapter:Ldev/ukanth/ufirewall/profiles/ProfileAdapter;

.field profilesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/profiles/ProfileData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$WVtaJEHCiSzuJCZr7pwychMg8O0(Ldev/ukanth/ufirewall/activity/ProfileActivity;Ldev/ukanth/ufirewall/profiles/ProfileData;Ljava/lang/String;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->lambda$onContextItemSelected$0(Ldev/ukanth/ufirewall/profiles/ProfileData;Ljava/lang/String;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_MXbK169DsrgvYPWUyAzbVOcOjI(Ldev/ukanth/ufirewall/activity/ProfileActivity;ILdev/ukanth/ufirewall/profiles/ProfileData;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->lambda$renameProfile$1(ILdev/ukanth/ufirewall/profiles/ProfileData;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j8kvnMfbLV7CGhUSjuHohIp81RM(Ldev/ukanth/ufirewall/activity/ProfileActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->lambda$addNewProfile$2(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    return-void
.end method

.method private addNewProfile()V
    .locals 4

    .line 243
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 244
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v2, Ldev/ukanth/ufirewall/R$string;->profile_add:I

    .line 245
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->profile_add:I

    sget v2, Ldev/ukanth/ufirewall/R$string;->profile_hint:I

    new-instance v3, Ldev/ukanth/ufirewall/activity/ProfileActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity$$ExternalSyntheticLambda2;-><init>(Ldev/ukanth/ufirewall/activity/ProfileActivity;)V

    .line 247
    invoke-virtual {v0, v1, v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->input(IILcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private initList()V
    .locals 5

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 200
    new-instance v1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v3, Ldev/ukanth/ufirewall/R$string;->defaultProfile:I

    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ldev/ukanth/ufirewall/profiles/ProfileData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfiles()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 204
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 206
    new-instance v1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v3, Ldev/ukanth/ufirewall/R$string;->profile1:I

    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "profile1"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AFWallProfile1"

    invoke-direct {v1, v2, v3}, Ldev/ukanth/ufirewall/profiles/ProfileData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 207
    new-instance v1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v3, Ldev/ukanth/ufirewall/R$string;->profile2:I

    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "profile2"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AFWallProfile2"

    invoke-direct {v1, v2, v3}, Ldev/ukanth/ufirewall/profiles/ProfileData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 208
    new-instance v1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v3, Ldev/ukanth/ufirewall/R$string;->profile3:I

    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "profile3"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AFWallProfile3"

    invoke-direct {v1, v2, v3}, Ldev/ukanth/ufirewall/profiles/ProfileData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getAdditionalProfiles()Ljava/util/List;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 213
    new-instance v3, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-direct {v3, v1, v1}, Ldev/ukanth/ufirewall/profiles/ProfileData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private isNotDuplicate(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 269
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 270
    invoke-virtual {v1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$addNewProfile$2(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 1

    .line 248
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->isNotDuplicate(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "\\s+"

    const-string v0, ""

    .line 250
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 251
    new-instance v0, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-direct {v0, p1, p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/profiles/ProfileData;->save()Z

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 255
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profileAdapter:Ldev/ukanth/ufirewall/profiles/ProfileAdapter;

    .line 256
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$string;->profile_notsupport:I

    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$string;->profile_duplicate:I

    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onContextItemSelected$0(Ldev/ukanth/ufirewall/profiles/ProfileData;Ljava/lang/String;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 1

    .line 151
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 155
    :try_start_0
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->clone()Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object p1

    .line 156
    invoke-direct {p0, p3}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->isNotDuplicate(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "\\s+"

    const-string v0, ""

    .line 157
    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 158
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->removeId()V

    .line 159
    invoke-virtual {p1, p3}, Ldev/ukanth/ufirewall/profiles/ProfileData;->setName(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1, p4}, Ldev/ukanth/ufirewall/profiles/ProfileData;->setIdentifier(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->save()Z

    const/4 p4, 0x0

    .line 162
    invoke-virtual {p0, p2, p4}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 163
    invoke-virtual {p0, p3, p4}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 164
    invoke-static {p2, p3}, Ldev/ukanth/ufirewall/Api;->copySharedPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    iget-object p2, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 165
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profileAdapter:Ldev/ukanth/ufirewall/profiles/ProfileAdapter;

    .line 166
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$string;->profile_duplicate:I

    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AFWall"

    .line 171
    invoke-virtual {p1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$renameProfile$1(ILdev/ukanth/ufirewall/profiles/ProfileData;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 0

    .line 226
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 227
    invoke-direct {p0, p3}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->isNotDuplicate(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 228
    invoke-interface {p4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 229
    invoke-virtual {p2, p3}, Ldev/ukanth/ufirewall/profiles/ProfileData;->setName(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->save()Z

    iget-object p3, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 231
    invoke-interface {p3, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profileAdapter:Ldev/ukanth/ufirewall/profiles/ProfileAdapter;

    .line 232
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$string;->profile_duplicate:I

    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private renameProfile(Ldev/ukanth/ufirewall/profiles/ProfileData;I)V
    .locals 4

    .line 220
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 222
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    sget v3, Ldev/ukanth/ufirewall/R$string;->profile_rename:I

    .line 223
    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 224
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    new-instance v2, Ldev/ukanth/ufirewall/activity/ProfileActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p1}, Ldev/ukanth/ufirewall/activity/ProfileActivity$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/activity/ProfileActivity;ILdev/ukanth/ufirewall/profiles/ProfileData;)V

    .line 225
    invoke-virtual {v1, v0, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->input(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 111
    iget v2, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 141
    :pswitch_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {p0, v2}, Ldev/ukanth/ufirewall/Api;->donateDialog(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 142
    :cond_1
    :goto_0
    invoke-static {v1}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfileByName(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 144
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 146
    new-instance v3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v3, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v3, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    sget v4, Ldev/ukanth/ufirewall/R$string;->profile_rename:I

    .line 148
    invoke-virtual {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    .line 149
    invoke-virtual {v3, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    new-instance v4, Ldev/ukanth/ufirewall/activity/ProfileActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, v1}, Ldev/ukanth/ufirewall/activity/ProfileActivity$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/activity/ProfileActivity;Ldev/ukanth/ufirewall/profiles/ProfileData;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3, v0, v0, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->input(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto/16 :goto_1

    :cond_2
    const-string p1, "AFWall"

    const-string v0, "Unable to clone. Data from DB is empty"

    .line 178
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->unable_clone:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 187
    :pswitch_1
    invoke-static {v1}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfileByName(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 189
    iget p1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0, p1}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->renameProfile(Ldev/ukanth/ufirewall/profiles/ProfileData;I)V

    goto :goto_1

    .line 114
    :pswitch_2
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v0

    if-nez v0, :cond_5

    .line 115
    iget v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_4

    .line 116
    invoke-static {v1}, Ldev/ukanth/ufirewall/util/G;->removeAdditionalProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 118
    iget p1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profileAdapter:Ldev/ukanth/ufirewall/profiles/ProfileAdapter;

    .line 119
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->delete_profile:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 125
    :cond_4
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->profile_notsupport:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 128
    :cond_5
    iget v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-eqz v0, :cond_6

    .line 129
    invoke-static {v1}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfileByName(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 130
    invoke-static {v1}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->deleteProfileByName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 131
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/util/G;->clearSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    .line 132
    iget p1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profileAdapter:Ldev/ukanth/ufirewall/profiles/ProfileAdapter;

    .line 133
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;->notifyDataSetChanged()V

    :cond_6
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget p1, Ldev/ukanth/ufirewall/R$layout;->profile_main:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->setContentView(I)V

    .line 51
    sget p1, Ldev/ukanth/ufirewall/R$id;->profile_toolbar:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 52
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 54
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->initList()V

    .line 59
    sget p1, Ldev/ukanth/ufirewall/R$id;->listProfileView:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 60
    new-instance v0, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profilesList:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity;->profileAdapter:Ldev/ukanth/ufirewall/profiles/ProfileAdapter;

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 94
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 95
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 97
    iget-object p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    sget p3, Ldev/ukanth/ufirewall/R$id;->pro_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Ldev/ukanth/ufirewall/R$string;->select:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 99
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 100
    sget p2, Ldev/ukanth/ufirewall/R$string;->clone:I

    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x68

    invoke-interface {p1, p3, v0, p3, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 101
    sget p2, Ldev/ukanth/ufirewall/R$string;->rename:I

    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x67

    invoke-interface {p1, p3, v0, p3, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 103
    :cond_0
    sget p2, Ldev/ukanth/ufirewall/R$string;->delete:I

    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x66

    invoke-interface {p1, p3, v0, p3, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 69
    sget v0, Ldev/ukanth/ufirewall/R$string;->profile_add:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$drawable;->plus:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 70
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 85
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 82
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->onBackPressed()V

    return v2

    .line 79
    :cond_1
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->addNewProfile()V

    return v2
.end method

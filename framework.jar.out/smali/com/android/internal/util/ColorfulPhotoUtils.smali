.class public Lcom/android/internal/util/ColorfulPhotoUtils;
.super Ljava/lang/Object;
.source "ColorfulPhotoUtils.java"


# static fields
.field private static INSTANCE:Lcom/android/internal/util/ColorfulPhotoUtils; = null

.field private static final PHOTO_RES_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static mAvatarResIdArray:[I

.field private static mIsEnabled:Z

.field private static mPhotoResIdArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-class v0, Lcom/android/internal/util/ColorfulPhotoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ColorfulPhotoUtils;->TAG:Ljava/lang/String;

    .line 18
    sput-object v1, Lcom/android/internal/util/ColorfulPhotoUtils;->INSTANCE:Lcom/android/internal/util/ColorfulPhotoUtils;

    .line 19
    sput-object v1, Lcom/android/internal/util/ColorfulPhotoUtils;->mPhotoResIdArray:[I

    .line 20
    sput-object v1, Lcom/android/internal/util/ColorfulPhotoUtils;->mAvatarResIdArray:[I

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/util/ColorfulPhotoUtils;->mIsEnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 26
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x1110058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/util/ColorfulPhotoUtils;->mIsEnabled:Z

    .line 27
    sget-boolean v5, Lcom/android/internal/util/ColorfulPhotoUtils;->mIsEnabled:Z

    if-eqz v5, :cond_1

    .line 28
    const v5, 0x107003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, photoNameArray:[Ljava/lang/String;
    const v5, 0x107003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, avatarNameArray:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 31
    array-length v1, v3

    .line 32
    .local v1, count:I
    new-array v5, v1, [I

    sput-object v5, Lcom/android/internal/util/ColorfulPhotoUtils;->mPhotoResIdArray:[I

    .line 33
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 34
    sget-object v5, Lcom/android/internal/util/ColorfulPhotoUtils;->mPhotoResIdArray:[I

    aget-object v6, v3, v2

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v2

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 38
    array-length v1, v0

    .line 39
    .restart local v1       #count:I
    new-array v5, v1, [I

    sput-object v5, Lcom/android/internal/util/ColorfulPhotoUtils;->mAvatarResIdArray:[I

    .line 40
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 41
    sget-object v5, Lcom/android/internal/util/ColorfulPhotoUtils;->mAvatarResIdArray:[I

    aget-object v6, v0, v2

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v2

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    .end local v0           #avatarNameArray:[Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #photoNameArray:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/util/ColorfulPhotoUtils;
    .locals 4
    .parameter "context"

    .prologue
    .line 48
    const-class v1, Lcom/android/internal/util/ColorfulPhotoUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/util/ColorfulPhotoUtils;->INSTANCE:Lcom/android/internal/util/ColorfulPhotoUtils;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 49
    new-instance v0, Lcom/android/internal/util/ColorfulPhotoUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/util/ColorfulPhotoUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/util/ColorfulPhotoUtils;->INSTANCE:Lcom/android/internal/util/ColorfulPhotoUtils;

    .line 50
    sget-object v0, Lcom/android/internal/util/ColorfulPhotoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First init, photoResIdArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/util/ColorfulPhotoUtils;->mPhotoResIdArray:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    sget-object v0, Lcom/android/internal/util/ColorfulPhotoUtils;->INSTANCE:Lcom/android/internal/util/ColorfulPhotoUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAvatarResId(Landroid/net/Uri;)I
    .locals 4
    .parameter "uri"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    sget-boolean v1, Lcom/android/internal/util/ColorfulPhotoUtils;->mIsEnabled:Z

    if-nez v1, :cond_1

    .line 71
    :cond_0
    const/4 v1, -0x1

    .line 80
    :goto_0
    return v1

    .line 73
    :cond_1
    sget-object v1, Lcom/android/internal/util/ColorfulPhotoUtils;->mAvatarResIdArray:[I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/internal/util/ColorfulPhotoUtils;->mAvatarResIdArray:[I

    array-length v1, v1

    if-nez v1, :cond_3

    .line 74
    :cond_2
    sget-object v1, Lcom/android/internal/util/ColorfulPhotoUtils;->TAG:Ljava/lang/String;

    const-string v2, "AvatarResIdArray is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/internal/util/ColorfulPhotoUtils;->getPhotoResId(Landroid/net/Uri;)I

    move-result v1

    goto :goto_0

    .line 77
    :cond_3
    sget-object v1, Lcom/android/internal/util/ColorfulPhotoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvatarResId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    sget-object v2, Lcom/android/internal/util/ColorfulPhotoUtils;->mAvatarResIdArray:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 79
    .local v0, randomIndex:I
    sget-object v1, Lcom/android/internal/util/ColorfulPhotoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "randomIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", avatarResId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/util/ColorfulPhotoUtils;->mAvatarResIdArray:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v1, Lcom/android/internal/util/ColorfulPhotoUtils;->mAvatarResIdArray:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public getPhotoResId(Landroid/net/Uri;)I
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v1, -0x1

    .line 56
    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/android/internal/util/ColorfulPhotoUtils;->mIsEnabled:Z

    if-nez v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    sget-object v2, Lcom/android/internal/util/ColorfulPhotoUtils;->mPhotoResIdArray:[I

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/util/ColorfulPhotoUtils;->mPhotoResIdArray:[I

    array-length v2, v2

    if-nez v2, :cond_3

    .line 60
    :cond_2
    sget-object v2, Lcom/android/internal/util/ColorfulPhotoUtils;->TAG:Ljava/lang/String;

    const-string v3, "PhotoResIdArray is empty!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_3
    sget-object v1, Lcom/android/internal/util/ColorfulPhotoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhotoResId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    sget-object v2, Lcom/android/internal/util/ColorfulPhotoUtils;->mPhotoResIdArray:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 65
    .local v0, randomIndex:I
    sget-object v1, Lcom/android/internal/util/ColorfulPhotoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "randomIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", photoResId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/util/ColorfulPhotoUtils;->mPhotoResIdArray:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v1, Lcom/android/internal/util/ColorfulPhotoUtils;->mPhotoResIdArray:[I

    aget v1, v1, v0

    goto :goto_0
.end method

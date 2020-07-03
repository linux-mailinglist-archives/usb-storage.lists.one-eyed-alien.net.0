Return-Path: <usb-storage+bncBDA7X7F2WUEBBFO47X3QKGQELCBEPRY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 606CC213EB0
	for <lists+usb-storage@lfdr.de>; Fri,  3 Jul 2020 19:42:46 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id j5sf32400768wro.6
        for <lists+usb-storage@lfdr.de>; Fri, 03 Jul 2020 10:42:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593798166; cv=pass;
        d=google.com; s=arc-20160816;
        b=B9MNd8ubTADGwGuDgGl3Uww9Io3CR7Tg0M2ntej/ancESzmHfXJW7iJgI54NRdqQYB
         DmL/SoXI4QukWomRufcg8UBXen8+CQVLGqLoJk4FZGtD5hKXUfWZzGLeGjNBp5jowdlP
         qi2KIMmuxXEP9nKJql7Q0w+AZLTCdsIVdaJHVF36RlYG8XsfTTQ4jWvKugignGsBytkw
         6dL86OA7iRsaJ4+E7U0/FgeH1x5MbDsSsUZdAyb7pJRGpUe/HJ5GGyS9JWQXwXNKsNVx
         4+ffMeGP2N1HIFemNXqhkmrJkDatIa+OdhR6i59jfYEKoDVwl+ptNIS2fV+/zZju6HZ1
         jkkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=C4VSvQTAY6jQwUtpeCyTnKzz7GRTof7Yphe8wuNe6o8=;
        b=YRJo9pScvM3JNe9cNmJT5Vz0UpBRqf036GmZCDLMVqoHCUPZ6Je/9xbpk63yAruUfD
         Y3s/L+KHexqlKU1Rr/MquPvD+1fDJinyR/IAEkA3CMlITEhcb1qo+XiYbdAsL3AAYV6U
         m9pxiaiNu+OUMGXljC26eaUwGL+QxYPFav8RFcvH1PY2eNQThvd+3WmheGjvST5EAL0y
         Mf+BhCVW4YCZj2gNBR9UyQyYXloNheoGjZRqlx7LSZEb+Zopg2ArtOOxmDWMeMnpOCEQ
         1DJqshQyuwoAZPvUAGciqfITNUMh9y/t3XBK6bWbiwJQ3FZ9dk+PCuF5W+62H3+gmCNZ
         LA3w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=mWYGekfi;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C4VSvQTAY6jQwUtpeCyTnKzz7GRTof7Yphe8wuNe6o8=;
        b=FpmmTCLhZ89geoRHnN7Y7p4jar0dZSkS8opKXroNyuBSW+zxALMlGO/SjCoSo69Vrf
         WuRmOhwhSBG3WInNKZ6Sbgv0/SPP6sQFL48xNeiDssuSD+06UxzySfjRBRWsF/YzS/vV
         wa69WS7hpagdu0DhmV6tcvLdizH/TAvXNBvNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C4VSvQTAY6jQwUtpeCyTnKzz7GRTof7Yphe8wuNe6o8=;
        b=fkJ8w8c56VBjHv0vKPmtYRIAjH0G3MDTBwQNQXnpxeaWlcZu/CIK2wb0B2JEeYjD5x
         CMBJ2BmyfduBDYHpzXsH4ZdHdm8VD7ia96pXDj/5DISD8sZS0Cq3bBakyE0JYf1iHsYx
         Jyf70c87io2V4/MBvcEMwUVciqyfAnJXP9GbzKTreupmOPI0YPttEQceKRD1aqbL2dNw
         wZZFKIcvV+mhUoWPPhVndX3p4Cj0z6u/kKIcRjmNbh8r3/83BaTZqHszLrUAIvNrTp/Y
         b44+BK78FEnv+FRxdA7oLVf3x+W1VZRk+33Ev3n3028kfpLVGoKwoVYeEIJ6k8TxlNuq
         /cHw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532K6nwWQsI9vjLygfq0hIYsaAU4dLFmOxcmy/p1pg7EjoommunI
	WG9fSIY5bg8dQIu9AMB2yfiMmA==
X-Google-Smtp-Source: ABdhPJxoDsG2pKDg1XZnMSDtFCGQ9gU50AzIsrPYpIZeT5AugkOAHBKZKGL5mH19K4hrVgSevL6WaQ==
X-Received: by 2002:a1c:24c6:: with SMTP id k189mr39672268wmk.9.1593798166144;
        Fri, 03 Jul 2020 10:42:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:b1cf:: with SMTP id r15ls2096250wra.3.gmail; Fri, 03 Jul
 2020 10:42:45 -0700 (PDT)
X-Received: by 2002:adf:81c7:: with SMTP id 65mr36055396wra.47.1593798165314;
        Fri, 03 Jul 2020 10:42:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593798165; cv=none;
        d=google.com; s=arc-20160816;
        b=vZvQHZuJ+ScwJn1AWoXrFa/RtRYF304SLFlFx8FWq3DiZQfC53SPT/G+c7E8tqSZnU
         pA/3r/RgoV0YnVJBkbAE7OROZeyW1loSeB4fTkQvy0vLBoXoQetrSIWzYqjsw/BbA5cu
         UM3XqqAKohSKGAeWRzSxot8cbQOIUfiyJx2mIBqGMIDMEW8UH2xJz3/JLI3NyBlHC/qe
         K+BTQRFMswOGLwurzfeKI6G7pjBG2f92KVXssWmu75ALMdLUbO8Vlz5dKq5gLxXTPnCz
         wMrB8mD1UDJ8A0SacD7RW7JdGGnPdE7X86Kq+m1VvGDCygTA8h19XOY+L80Q2uZlHyM1
         IPdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BRma9lRqEYDVOCUnxuxL1ar6KYSuaKRVNlo6MvalKh8=;
        b=VlKOlywkwArWy2vErKCTqXeA7Lr6lXdfkAODxYPJFbJJEdf8WzclsmlcDerBZ4wMgy
         CEtBm4aS/81CtBlykXHsCMmMZgi74mIOc2DduWr+xNsHtDgnrvClmTQR2ShkiH+PH2nF
         m7yizllNZtg86psHESFxTuuYK10Pd2G4UIn3hoKOJ+2TCni9TTi0he2mjnzGzg3cxNkn
         dCTlHT86Hg+C31MaGbGg0QvmmU+soxVJ25v5Shh/3Hbx48oAZF7sQotkN85HgHCwS1TW
         xwqghHkRgeHtHHayyw61AVQVjhnjU0iBEsxl8ynn+x4F8QfYAXaXrvF57+LgC3dQEzuB
         xWXw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=mWYGekfi;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id r18sor8337403wro.13.2020.07.03.10.42.45
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 03 Jul 2020 10:42:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a05:6000:d0:: with SMTP id q16mr4673145wrx.166.1593798165048;
        Fri, 03 Jul 2020 10:42:45 -0700 (PDT)
Received: from localhost.localdomain ([2.27.35.144])
        by smtp.gmail.com with ESMTPSA id x11sm13625799wmc.26.2020.07.03.10.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 10:42:44 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Lee Jones <lee.jones@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Daniel Drake <dsd@gentoo.org>,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 19/30] usb: storage: alauda: Remove set but
 unchecked variable
Date: Fri,  3 Jul 2020 18:41:37 +0100
Message-Id: <20200703174148.2749969-20-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200703174148.2749969-1-lee.jones@linaro.org>
References: <20200703174148.2749969-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=mWYGekfi;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

The return value of alauda_get_media_status() hasn't been checked
since the driver's inception back in 2005.  If nothing have gone
wrong/been detected until this point, it's probably safe to just
remove the variable.

Fixes the following W=3D1 kernel build warning(s):

 drivers/usb/storage/alauda.c: In function =E2=80=98alauda_check_media=E2=
=80=99:
 drivers/usb/storage/alauda.c:456:6: warning: variable =E2=80=98rc=E2=80=99=
 set but not used [-Wunused-but-set-variable]
 456 | int rc;
 | ^~

Cc: Alan Stern <stern@rowland.harvard.edu>
Cc: Daniel Drake <dsd@gentoo.org>
Cc: usb-storage@lists.one-eyed-alien.net
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/usb/storage/alauda.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index ddab2cd3d2e75..20b857e97e60c 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -453,9 +453,8 @@ static int alauda_check_media(struct us_data *us)
 {
 	struct alauda_info *info =3D (struct alauda_info *) us->extra;
 	unsigned char status[2];
-	int rc;
=20
-	rc =3D alauda_get_media_status(us, status);
+	alauda_get_media_status(us, status);
=20
 	/* Check for no media or door open */
 	if ((status[0] & 0x80) || ((status[0] & 0x1F) =3D=3D 0x10)
--=20
2.25.1

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20200703174148.2749969-20-lee.jones%=
40linaro.org.

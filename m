Return-Path: <usb-storage+bncBDF2TOFO7UMBBQO3QOEQMGQE5S7VZRY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x148.google.com (mail-lf1-x148.google.com [IPv6:2a00:1450:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0823F3A88
	for <lists+usb-storage@lfdr.de>; Sat, 21 Aug 2021 14:12:50 +0200 (CEST)
Received: by mail-lf1-x148.google.com with SMTP id bu5-20020a056512168500b003d8c0148343sf511424lfb.14
        for <lists+usb-storage@lfdr.de>; Sat, 21 Aug 2021 05:12:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629547969; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZUUGsnNLoN8ZAOZOWn7c0WHlNJtj2ayscNaBRgCUbIG3DaU4yPraogo1b/Q3TDzDBd
         oTpCEciXLdpFmR99EaHgCm8zpvkOVoB+JgUZhKYEZgwPih3aR40+aVPfHEOI20iAA5Cg
         9G0okKZeyYSgEtpSfGdTjtnxlWTIYmlCc7TQMU15nf4pwIYIuMwVwNXDP2ywHnpioEwd
         dQonb02KlgQlGISKHPrWmKGSF5qlI9747H+45lLdeQ2sbT8U9GRP20Dh/ikVl+TqAlbR
         MuWLE1VuHIoil0kdrue7MewFUe05EueqwCJY0MpymdcwlbZlK5scpOZ16l8Q9ym9kRWH
         CL6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ngoYOmmmHpDOS1ffOeT8H+N8i1s5Pzg7iylplpHS0Ow=;
        b=QHFeLYPetxnBpURkp8Po3o5S7o2GZCH25FlQsPUZ3pSzTHuL0UDindGndd+JC/CW/X
         ti+q4/ZVPFiVqfqFLFG09scWceQ3t4VAreAGodRN1EmUKX+5fh8+y6Pd9ccs2cnlTXzX
         AcIjenU6Jie+bMxjl9i7EDiyuStSDiBUrjSUOhoIexSoR85nY/NEft2JMgK7R9EmdGyj
         r95ioIbnEm/brFOiK7EB/5jaLAqNHdes4NK9JuxuBjWkcObbMBGisjxefNmRyC6VrNtW
         lyCGeU7d8LOrWkMATHKzzdqoFqMWE9JXAaNH3lrFGQrB9KO9RViTCWZLfM7k+B/X0jAI
         G8gQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PdP+FH0V;
       spf=pass (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=niklaslantau@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ngoYOmmmHpDOS1ffOeT8H+N8i1s5Pzg7iylplpHS0Ow=;
        b=lU5yU5pztzpDYVmndMpUi4p5iKUwl6RMbjCaDtrYoAQaXtfNMPvRfC1DaJOI4Pg2zH
         uQdkxnM+4zvld5o1zgA5eHeOmcOcVeMXgCeWAVJt2Vca8z5b4SILdItuf+zxa3u4fxNL
         Kn3feVAkdW734UabXayU1OL2ReAiTV9DcntBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ngoYOmmmHpDOS1ffOeT8H+N8i1s5Pzg7iylplpHS0Ow=;
        b=IPrcR04EVvJg3UQlwrNhdh9es9aiqSK3zmTkrt4k7IX+KTictrPsU91WcVfnmWlNDG
         +fSG7GVx8tGRhuxT4177BNhOSK84w2S9RFR938CVjFR8baPM4KAo21dY7PrY4Bp76vSu
         J9iWPGCu841t0fJ0mJHN9rcz9V1SmTFgZITcv7+eUEfGGPNzCMmT6+hvFvotgnlOZJD8
         PHCeDvrb12ZGJT8YjvAuhuqoTkQqfGQHQQ2WHad3P39tKHOvWHwxv2lqvjC9/v2QEXkT
         HOsHGPQE0hp90ijSxyXqhzrL4L+IMzoaTt0GFt2efxs0KlFDoAz566CAoI3726v152VE
         afBw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531gDEUuavOq3LjcIQaRqkvvlHLpzimzkLM/Z40njZtn3az7W4rJ
	o9b01V9yLGTLyNodWP8TF6VXZg==
X-Google-Smtp-Source: ABdhPJyLOB7v/sTfjAjDPxZLVo7vXyMJd3uToYu9S/y+lyR2zMXXmsSc/3gVjemZr7eFWUBqHvdQMw==
X-Received: by 2002:ac2:4c47:: with SMTP id o7mr5737774lfk.512.1629547969629;
        Sat, 21 Aug 2021 05:12:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6512:c13:: with SMTP id z19ls1769701lfu.0.gmail; Sat, 21
 Aug 2021 05:12:48 -0700 (PDT)
X-Received: by 2002:a05:6512:38ad:: with SMTP id o13mr18143944lft.229.1629547968437;
        Sat, 21 Aug 2021 05:12:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629547968; cv=none;
        d=google.com; s=arc-20160816;
        b=HAscLHDcep47Wc3JnWvUIi0EfRZFjfbQHjRCniVB9tMx1Tw6q97f6oCEgRBVMoJwSI
         5Fds30aro4qjoQANzmyHfEBD6QHesSVS4j/1ISNMegSxMEcmorfSn6vk6JPpzpv1/s0k
         OWfyHf+K5rtRkLSwi93/2uQwZOeTPgM641KpjwnmXqOnhG3Ev3ZU4ps5jXQL/GIK4k0S
         CJvpAzrB3hPBMeFmym9q05ImSpxmo9JLk2pdCPRanqbAMYfZaxoX7pT1Y8qikzOpMi7F
         F0F8TWGbwBydaaHGL13hQ89KP+O+13BDijgLSyH4TcilZO1ahor8eGxp52gXw7VracaN
         i6CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=pWm+SXTgQ6Ye71KEJYrX8x4GdkySoQhJ1rIbykcEo+8=;
        b=Yt6A0puKYOcMLv5pRBCrNIv7fE1ZlzKODBIQsZLTS7GluwBtqr+QgiMyMQw0IwgwXv
         lP7MKH2zS+bPp1pmr+cFNUMlNM6MdIMhJRGurLCwO6AW4dzdgqck45CBkZjw2WAUyPrg
         s/QKiPV6bd07hqEv9Oe8dbjjaiUY156txjipPu8BWCXDqC1Dqi+774x6M1veN3bEMP9v
         YKD4dg44rXpZ4o6vlPAKcy8GpDtUKue98bG/9hr34yE37ODgJMVOjj7uiRx1pdEzoLxm
         zWcsp7ZMzbxlG1M+u299Z5//IL6v6bY9T4Mr6NbyeqO9lSkEikgDHDz2kHpzXcQvaMWJ
         qM2A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PdP+FH0V;
       spf=pass (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=niklaslantau@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id k7sor4321202ljh.6.2021.08.21.05.12.48
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 21 Aug 2021 05:12:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a2e:7c0a:: with SMTP id x10mr19613907ljc.340.1629547968108;
        Sat, 21 Aug 2021 05:12:48 -0700 (PDT)
Received: from localhost.localdomain (h-62-63-208-27.A230.priv.bahnhof.se. [62.63.208.27])
        by smtp.googlemail.com with ESMTPSA id bp18sm564914lfb.201.2021.08.21.05.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Aug 2021 05:12:47 -0700 (PDT)
From: Niklas Lantau <niklaslantau@gmail.com>
To: stern@rowland.harvard.edu
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Niklas Lantau <niklaslantau@gmail.com>
Subject: [usb-storage] [PATCH] Usb: storage: usb: removed useless cast of void*
Date: Sat, 21 Aug 2021 14:11:34 +0200
Message-Id: <20210821121134.23205-1-niklaslantau@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Original-Sender: niklaslantau@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PdP+FH0V;       spf=pass
 (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=niklaslantau@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

Removed useless cast of a void* and changed __us to data

Signed-off-by: Niklas Lantau <niklaslantau@gmail.com>
---
 drivers/usb/storage/usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 90aa9c12ffac..e78e20fb1afa 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -295,9 +295,9 @@ void fill_inquiry_response(struct us_data *us, unsigned char *data,
 }
 EXPORT_SYMBOL_GPL(fill_inquiry_response);
 
-static int usb_stor_control_thread(void * __us)
+static int usb_stor_control_thread(void *data)
 {
-	struct us_data *us = (struct us_data *)__us;
+	struct us_data *us = data;
 	struct Scsi_Host *host = us_to_host(us);
 	struct scsi_cmnd *srb;
 
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210821121134.23205-1-niklaslantau%40gmail.com.

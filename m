Return-Path: <usb-storage+bncBC4IRMM5SMKBBI4WUKEAMGQEAH5DE3Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7B13DE374
	for <lists+usb-storage@lfdr.de>; Tue,  3 Aug 2021 02:17:40 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id w10-20020a0cfc4a0000b0290335dd22451dsf6978189qvp.5
        for <lists+usb-storage@lfdr.de>; Mon, 02 Aug 2021 17:17:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627949859; cv=pass;
        d=google.com; s=arc-20160816;
        b=JOsxDOisFRh5MneSd+GcI3F0T9ex9yVyO8/z1EaCc+KQ3DVeXAjLiAmr9lC/DqkVW0
         SDtT5JoqNufM32Q1MZDuPPAeMszTQBMp2gkS4PWXyHUJgh/EN72f3ERRTeBg5jyezzVP
         M56D2+uVsIVFWyzZhLTe2ZWAtHGmKcLXvsJR82mIzyXviX7Kqvw9MSorHpfzL8qP6vv2
         FLBYn5duWc6AeJ0Vnm4YrV8Bhvx+IFPd2DP2SDWYhbUfwGRBAoDSL8+u2mRAZ0BUk5bF
         XM9/ZHvtpxvG+ylvpT2J8Q8Q5tkGyA4EnLj22DFBLP1MlQ5vVMU07NKBysYOsbHcC0WI
         C37w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=iErL1fWgzTqteYW7kG1+P/zOwiDrsebzOudWNDOyARY=;
        b=FdrgB5AYpp8050kBDXJwzoFWlsKoan943UVtXTgP6EJdqMmvu8nXDmdnFt0jqK5Tpr
         8jwDR352SDkeNMGipQct8Yl0TmZoGnLWtQBoWHVjo2H05pf6C/0eaExPDqBHxGe1iuGq
         SWqkdMd9EWjSSr7nlIIXrXnBA5tDmG30qTJIzSVJFAnXfwUyiFScX5m22H6zz0mhe2Bw
         NG9yGjRfNkxZC47Sa3Po5PH8TfwZg+HwLCWcEzRWIy56VnkMe4H4ICxVyeaMHAoFKFRC
         02jeREDgly3M/Q5hObHTdBSbG1LJZDcLgv/gnjYm/Hji6VNW1eazrO8H2xj+LZP7Go5g
         6bnA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTIvf1s1;
       spf=pass (google.com: domain of salah.triki@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=salah.triki@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iErL1fWgzTqteYW7kG1+P/zOwiDrsebzOudWNDOyARY=;
        b=Vre2hVjWChQ1vE0AQDLtg3QJ/6rncTMMr3OXcKivhq9jygOaA/mCiUKyxmYvVnSIUb
         xO0ZVpBviLKXa30BX72uEywl0vNHc59SUf2bVJoyEpgdT1cFrl6w4DwDj3r2gKsGSwLu
         6sMFMRN/XsWvZWG6+wIU4QP85DT7J2L5XrOjk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iErL1fWgzTqteYW7kG1+P/zOwiDrsebzOudWNDOyARY=;
        b=iO0dkoCCRjjSsSq5ofFr7ey6exSZbZcVdddWjZeYM5Eldj+vn+7ceTqFx4UWs1tqo/
         ZP3zNdOQOOi38rApt9kyVwF8uztjhhH2wcPAbGG9DfRxhisjCMosnOjCQJK02UceAs5O
         Wa4tW7+aH2NbpV2JfNxYd9zN107TWKzl7uEBeNDG+mXU1sggKe7lu9TRHt0mcHqeUSsV
         ezcE0NqOmU1HX/QQ2w84VoQmvv/GatfrbnHsf+dukGJQ8A5jfa17jf1Vxvja6CJiL19r
         C9LXO0qWT1D677ZyADsXh5+EHsV06bvfwQ8HbKYLZ5qVoY9DVcuJN5f98WXnrdDVxQlI
         ywKA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5333huJ7pHxr1dOWwmA3ynPEN+q/+QHniBa8Qw49AGPqYYKbX0Dy
	YPm1TiZK3nYtD+hQ4phRoLq9Uw==
X-Google-Smtp-Source: ABdhPJwp4n5eh18U/LvNn5obY/TBMQQfZjEWd6ZJtDKPM8E4rEBCvDwTkHvW1OmESRwyoGwqmo9hhQ==
X-Received: by 2002:a05:620a:12c3:: with SMTP id e3mr18327377qkl.211.1627949859533;
        Mon, 02 Aug 2021 17:17:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:5147:: with SMTP id g7ls4381012qvq.6.gmail; Mon, 02 Aug
 2021 17:17:39 -0700 (PDT)
X-Received: by 2002:a0c:ff4b:: with SMTP id y11mr5333899qvt.50.1627949859106;
        Mon, 02 Aug 2021 17:17:39 -0700 (PDT)
Received: by 2002:a05:620a:b89:b029:3b8:29c7:4d03 with SMTP id af79cd13be357-3bd1dd99f0dms85a;
        Mon, 2 Aug 2021 16:03:17 -0700 (PDT)
X-Received: by 2002:a05:600c:2909:: with SMTP id i9mr1162339wmd.74.1627945396624;
        Mon, 02 Aug 2021 16:03:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627945396; cv=none;
        d=google.com; s=arc-20160816;
        b=OmW3hH4XT23wj3PVzPwKUZjz4hZyhJnsgsljtMTo5Zj2ohGlLtb4XcfDympajwDvLo
         jIlcMlXyCBtUsmCUD2uTeODOZGWPg+JTW124eZTzooR2QdOvPBKUxqtGl/d81tMCYALq
         MElNV04hrLrqM/vksbO0asBRXPmAaxiXG1+gU67IxHG4h4aaGoT6BYlBjLzIq1GQ9mHI
         nrW9tv9Pk75GjvoDY/t4ZQ/KfsrvIsPg4UTjC7HC8515syLgPvmCyFLCHDI77hxlQGAK
         dRSYTi841SlWQ3cQi5Fh7gosgZpyiN3FWmp5D5MPA+Ek+zFR4UPiw/Wm/+3sDzjlbweG
         eJzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=+/F6H1SVoDXbJfVxzoeNR/we1SvGGtstduI4cQWqmxg=;
        b=kzDPH7FN8eXlDvfWX/g6KpW/HA96xo7ujGGL3Tp/+X14LDyO2m+sb22wIbiuOumb23
         zFU+0dK6rGJBBY3lrz2ZZv8xHJ2zErY0nebmvfRsxK+1473vbMMdGbqciQhic3+sfOaT
         BxMtSTC2WEGQGlEH6vVVVULLrI5W5Fk8HlhBfvXvSXYoGCtQI/57gKlgxH2WcV1GiDM0
         HOj9MuCHg/IB29QGOvPTzWgfOBs45B1OcSc3NCInkruCMi6QO8ju+pskI/Ca7Q+2pgby
         aJ6zurfDsNDwWO6W5WQp93nJnSaUlGCNwkB+VTEaFhfvEOUtL/HO6QKOtq7v4FcO16ta
         d7VA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTIvf1s1;
       spf=pass (google.com: domain of salah.triki@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=salah.triki@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p8sor5725365wre.14.2021.08.02.16.03.16
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 02 Aug 2021 16:03:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of salah.triki@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:adf:de06:: with SMTP id b6mr19688480wrm.316.1627945396369;
        Mon, 02 Aug 2021 16:03:16 -0700 (PDT)
Received: from pc ([196.235.140.151])
        by smtp.gmail.com with ESMTPSA id g138sm14146060wmg.32.2021.08.02.16.03.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Aug 2021 16:03:15 -0700 (PDT)
Date: Tue, 3 Aug 2021 00:03:13 +0100
From: Salah Triki <salah.triki@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH] usb: storage: realtek_cr: get lock before
 calling usb_enable_autosuspend()
Message-ID: <20210802230313.GA1480457@pc>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salah.triki@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BTIvf1s1;       spf=pass
 (google.com: domain of salah.triki@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=salah.triki@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

Based on the documentation of usb_enable_autosuspend(), the
caller must hold udev's device lock.

Signed-off-by: Salah Triki <salah.triki@gmail.com>
---
 drivers/usb/storage/realtek_cr.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index 3789698d9d3c..6948d6fdad39 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -918,9 +918,13 @@ static int realtek_cr_autosuspend_setup(struct us_data *us)
 	timer_setup(&chip->rts51x_suspend_timer, rts51x_suspend_timer_fn, 0);
 	fw5895_init(us);
 
+	usb_lock_device(us->pusb_dev);
+
 	/* enable autosuspend function of the usb device */
 	usb_enable_autosuspend(us->pusb_dev);
 
+	usb_unlock_device(us->pusb_dev);
+
 	return 0;
 }
 #endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210802230313.GA1480457%40pc.

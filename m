Return-Path: <usb-storage+bncBD6LRVPZ6YGRB3FRYX4QKGQE5AQC5OQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB16240788
	for <lists+usb-storage@lfdr.de>; Mon, 10 Aug 2020 16:25:50 +0200 (CEST)
Received: by mail-io1-xd45.google.com with SMTP id h205sf7143058iof.3
        for <lists+usb-storage@lfdr.de>; Mon, 10 Aug 2020 07:25:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597069549; cv=pass;
        d=google.com; s=arc-20160816;
        b=vM+448GdvKEAeE84vGZOhMQqqlyVS94EBpzLcM99pejTE5iS9kn8oW0oqwQ9tOg7Zw
         Wjck7+lg6KlzwG0JhHreKyF5JUgXWh5N6+4uL1ERT2fead0DkM+vVxupaMKSnbS+pt5r
         IMVF1pgS+cIFpNHONeeJ0nDiO1iZ4uJT7UXEm+jJ8LpAIWDYlWHWZFirQ8ZkDwexpEyP
         yZN2Sry28JUaGUYMHafr4xMY5I3ssY6Z8O7jQWEEDQXuIILWG54KUcw8HhHUcrDgHN6T
         F43w4K9T5+OaA4kF8jHBEMmBtGVX6P/Jt/mZ3eIowi1L+MxH0K0VKIpsooEzGUbVdjie
         KTXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=EjM8o+lFeh7y1utSL+YFVTRkR66Xbb4rhbSz7cTkTWU=;
        b=PwbLap9j8t8+pvhSKItH2528eivD8Pd6eSv7NNBVbfm94a3Ys7nTcCW+NKqvedQML1
         0m8jVSqXzBqkctYwzopgijY1CzJKfa0i7U+Oek3f9ZU6LSmRqGg/CmS2Y9vGTC1WzEbc
         yPUNqSiHtWDcEkVouSN75DHH/yxUsSaWXuaHR/e/Q4FSOF/5IJsvx8nqtwNfGsw2HHmu
         FLiirBh1QPPQkdN8OPJz54Jy9CrhFCA7gDPX3nTRsnDgaDyiJL5v7CZGGPMC9t46O2hQ
         YCP90f63qMAepNr9BdSoBx1vwuBTf0wov3Vm/ZIAzynbVnijWp1ke5wWEmsbUscmiHey
         6SdA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f3484ba@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EjM8o+lFeh7y1utSL+YFVTRkR66Xbb4rhbSz7cTkTWU=;
        b=Q6d/x02by65EUfNRvWgKoIe+y+uoVPN9INR2RGGWvtpp2RRpI06CBn+ECNIk11czF0
         puCZVavt12HCnXPQpS9FNT1njyN7S73pNlxXfTZg3hQRkhHcaTWKbBgsq1sMUi+F/gDL
         dJ+UXrvWb/8CDN15Yid97Q94sWL86TwhKowFg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EjM8o+lFeh7y1utSL+YFVTRkR66Xbb4rhbSz7cTkTWU=;
        b=E7TMHI8k6gm9iIPh/nv7bfeS30LUhmCt1gdl2mCKmQghh+0cLoL8b3YeOUB/GZ5CPT
         XZrR3VzDCaRWZdGT/7Rj+bCeBr7GTH/08jpDyKaz5iqHwOsmGhbmjMrWquO9ZAYp7Ids
         uLv/UEogm147RLO9ZQgv0JeSuwxn2evzYirzHChF0JaUpoduc3JxZuLvtDP2c+Z/RjEF
         mILkHTNxNb9+UNed+QatlOtTw0QiqFxAQBHZzoRIGbYvmW2S8iCB1smeqBoGYWTPZJ+8
         mM+qSNawYlHm6o5ysexyyn3K9OmfR2yEqnqnYV8g94Tq4QGDdKAa3FWNW2wmafy6YXY8
         dCOA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532QMxn4V0wFfFOLJf0/C1eM0Intqdxl3DPwOt0254fyzjvVGQRT
	1a1a89BM3QBcjfqMe9VoHIF/TA==
X-Google-Smtp-Source: ABdhPJzUZrpEBqkV+Q/RYnDcLIiSGrUb7cCh7ulSZOS0HfbEtgEIiDPWTuE+uGlHWLme04HAnfVZ/g==
X-Received: by 2002:a02:b90b:: with SMTP id v11mr20732924jan.111.1597069548725;
        Mon, 10 Aug 2020 07:25:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5e:8711:: with SMTP id y17ls2069631ioj.9.gmail; Mon, 10 Aug
 2020 07:25:48 -0700 (PDT)
X-Received: by 2002:a5d:9586:: with SMTP id a6mr17595421ioo.131.1597069548147;
        Mon, 10 Aug 2020 07:25:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597069548; cv=none;
        d=google.com; s=arc-20160816;
        b=FRCwi3PNXDbIUxq90AoR3UX/5OkjosX5vsq2SbqAsjrJwLVgMbqF2+tG+ycN4579MA
         TRFRf7Dv8YNYhQN3YurSzDsgrE2USCznciL6/HnLpUx/U1ch979hzqJ6OCu17zWoZlTn
         DT2GYo7/s1GEPCOgWvesWTPpuic2aeQLuvw0Vi83FmVgnQEhIt43aVXkskNbqbDG3WE8
         FDCzghWEDPunOnS3OetMFTITsVuO2eOw1Xt+8Ov0Q2WprTPnX/V7jHFpX4jDPy8kFUdz
         68rCja+DCOm1AK240CJDBE3S37nJ9nIkztM7xilZPnWtZldx5BbO4tjunuzgRn0fWOS3
         GvHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=VRNtwa6qOmu/TTcgTZ/0dV5FHzxBpVOix0rvGp2wfIs=;
        b=WYgIdGcPXwpUFpAja+LfkBpALUy683ePfHpWRHsVRLXalqebwu/zG3TXZq19J0I+Lf
         +Tw7cxwXP8NaJ3nr84TuLt3aCPx2IMnaJF6Orf/rOhhHQhhbrguZ3mjvvWesGC3rtR6M
         +VIbNxdNw4OVyO9reS7uyTKcHOlZJXfatmDrCYVAPp+v+5CKdMlJODj+B6/YzlzByPUJ
         FiAfgdA821nlphSYlTKv0Qgydxq6AK8F/2wpJhnpd+FTPB5d7dXAx2Xh/idY/oalCH4a
         nS7q9JrmvaKqBu1KJma9Pn+LeOGGz2I3h9LD9qHI8i3CH07hl4ZDI6Xv0DI09LT8S+Dh
         jJjg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f3484ba@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id c1si12802811iow.12.2020.08.10.07.25.47
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 10 Aug 2020 07:25:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 300682 invoked by uid 1000); 10 Aug 2020 10:25:47 -0400
Date: Mon, 10 Aug 2020 10:25:47 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Colin King <colin.king@canonical.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] USB: storage: isd200: fix spelling mistake
 "removeable" -> "removable"
Message-ID: <20200810142547.GC299045@rowland.harvard.edu>
References: <20200810083211.48282-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200810083211.48282-1-colin.king@canonical.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5f3484ba@netrider.rowland.org
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

On Mon, Aug 10, 2020 at 09:32:11AM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a usb_stor_dbg debug message. Fix it.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/usb/storage/isd200.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
> index 89f5e33a6e6d..3c76336e43bb 100644
> --- a/drivers/usb/storage/isd200.c
> +++ b/drivers/usb/storage/isd200.c
> @@ -1383,7 +1383,7 @@ static int isd200_scsi_to_ata(struct scsi_cmnd *srb, struct us_data *us,
>  				ATA_CMD_MEDIA_LOCK : ATA_CMD_MEDIA_UNLOCK;
>  			isd200_srb_set_bufflen(srb, 0);
>  		} else {
> -			usb_stor_dbg(us, "   Not removeable media, just report okay\n");
> +			usb_stor_dbg(us, "   Not removable media, just report okay\n");
>  			srb->result = SAM_STAT_GOOD;
>  			sendToTransport = 0;
>  		}
> -- 

Acked-by: Alan Stern <stern@rowland.harvard.edu>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200810142547.GC299045%40rowland.harvard.edu.

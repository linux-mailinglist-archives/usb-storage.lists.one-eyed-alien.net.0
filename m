Return-Path: <usb-storage+bncBD6LRVPZ6YGRBB7AZOLAMGQE2MBDT2A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C21E577051
	for <lists+usb-storage@lfdr.de>; Sat, 16 Jul 2022 19:06:17 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id r5-20020ac85c85000000b0031ecf611c64sf5780641qta.23
        for <lists+usb-storage@lfdr.de>; Sat, 16 Jul 2022 10:06:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1657991176; cv=pass;
        d=google.com; s=arc-20160816;
        b=ROzc0I5mLCrDMxj5++UhqtCKB1xQTg5K6uZJL+pwKvvyfvSpkz3PsOp4nMs1e2fRij
         bg4kJM2jCh8cnaV24SvzVkgU27sJsCwXe9ZRx0ZA9hQVxeWeRX8ypG4Osxli1q5IkzOy
         /uw65DT/R9SoyUpGoReno2CWYCb1SO5biMIl69+4Crolcq2Mwkp4s4Y2M7UqQN0SxVsI
         L3KI6SO7HoYOJ4WdMbvDtGmJ8Y4BnwqZnFUPYD7GpsxaUq8kIgvG41U9/5jRujxzJMYF
         tBNVw0dL6vJf/9Vbxkyq5KBNPe2j3pL3zslnbfV8BCLXjdIpQNDdUl9o9RZPNCHGuGpe
         dneQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OyEn7YKo/qm27/Zl7zpIpLO9ZMMvK99QwLXAuJp2RhU=;
        b=Lk802+l7/KSzp5L/Ir6nCdAVnOcmMrzxd4Q9g7SMCFgt1La4tQct2dmLPdAgf/7a/T
         QWY+R79bsamZa4VGWAM1agsBkE+L33jtfI4Vml2+NdsjIr+MPiL8RArJsS0mNpgZzYIC
         ivkV0WeYdQZcgbaiS5vPJmRiWjaEYYvmom46tegZwc993pyNMGC8CQyN+L2z6ZE+WRS5
         mlwHcXYuLIVyfiEhoxX4Qrb/v2N/vG48MinFrqPc6hPxBJ3JXPVlbf7dl02YTkxq1m4I
         9K110YSeesU5gymuOgysCWigYjQoBMtL3U+/vG4iXXhXCsEUZb8CgQP7TwgqIkQZeRj4
         cMFw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+62cbd50a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+62cbd50a@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OyEn7YKo/qm27/Zl7zpIpLO9ZMMvK99QwLXAuJp2RhU=;
        b=en1AvbOk6rTTwSOwb5ytg+YzgTu1FBaxItRDj/zLM2BFV1zUCBXPjOF3ukOMq5wwvR
         jlvrD4DOCsUChxpbR3UKMvMNVL+f6I3UBVoEv44PX6udN5MHpbx3Zfod9ys1w7RGslTN
         TGtFyCNgdQVrw9dhwlTe3fD0n8y8RonbjkmOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OyEn7YKo/qm27/Zl7zpIpLO9ZMMvK99QwLXAuJp2RhU=;
        b=xbyBXdLg7k+6rKCjXzUh6/gaxCzq5OZRDFPJD7/lgJdYwqNp/qTOmcWgTTDdDgTuGt
         IlWukXrLyZAx133Rt0jgappShSXszNIevJm2WHm0kG5sCH5NQ0F0N4NLfH5PeKx/q2W/
         RXoiF6F3NuHLZfFyVgEuhsRGH7GkoeYNkj5s+HLrS+FdtmQTagMf6Rk57ixUQ+Lsvew3
         +/YkoNKHw2nQd4r095+ulKPupcjkGrdiATgIx3rynUXUCcgRq+wll6f0CwPEuDl1j9MO
         BkPvINaWFjscmBlL+xwyuF+ORNuaQRnG/xI7rRFs4ezFbScBEEiX987wXz0TDwpuWKSV
         dz5Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AJIora+ME/jWctGixUJzCtfc7DNm9xwu5ze9MwCeZvZuC5LI2UTZ/oeb
	6fmoDwiTNhhAiqD7C2LwCjYbsw==
X-Google-Smtp-Source: AGRyM1sR/B2B3twjwh3geOe/F6mxrjXwLI3sGvc5HuuRJf9eYjix/Y/SwRVSAt+r4r4aFB3Z2+wWfA==
X-Received: by 2002:ad4:5bc1:0:b0:473:93b1:81ed with SMTP id t1-20020ad45bc1000000b0047393b181edmr14871841qvt.58.1657991176199;
        Sat, 16 Jul 2022 10:06:16 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:f10e:0:b0:461:dc9a:99e0 with SMTP id i14-20020a0cf10e000000b00461dc9a99e0ls85723qvl.1.-pod-prod-gmail;
 Sat, 16 Jul 2022 10:06:15 -0700 (PDT)
X-Received: by 2002:a0c:f289:0:b0:472:fdeb:dd10 with SMTP id k9-20020a0cf289000000b00472fdebdd10mr15682346qvl.67.1657991175337;
        Sat, 16 Jul 2022 10:06:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1657991175; cv=none;
        d=google.com; s=arc-20160816;
        b=KDDEBk0SXx6QtHCXIkYiQYF/gmRiKHtvqW/mi8v1cOF1dru80GTw7KrdEqe12Hyzha
         v3DrhdwAcnOII9g+wLcL9UbqNzpvnujKWQfD7G9CYT2ZkBayGrh/PXRk6Fkls/EtUXUZ
         9BQqpCnYHL3k/acgnRLt74ZUFm1pqyUR8BEiMJInude7+bY6r9prHwcrLlJbzVjjECte
         AtZiwlGEUXGWTAbhSzM0+fUEG6h4VnO1zr6M0NMOFVOJ1rcFTGjFQG5wjUBYr4iugamS
         4MMW0GFkW7GVAL0/zIyO3t2tQu7vWq0KMoJYLGd3Mkf1xQ/R5qefxpE86vfDeMELKWoH
         edjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=QGXCt0+SxxD6iOAdJpPIhbESNOSyuMo9fy5vlALy+KY=;
        b=CQvcx5O8tF/Kq/SUjsP51jtcx/a2Mux4dqrhfWR1DVkLSTyiWYOQjWrzfeT+usNQ6g
         gACl9uaD1w0iYCOxnYLfUQk/j0A0kzR4WRWT2etwrf2OGhIRP/IjVFfaQ8FAA+miFg93
         B1p8fYD6gVd9ZLtqBEQ6GmDqHdod8+f78QqXAYfE2b49jxS4WaK0lzBPP4t8VV8Vsdwf
         npdu2HuWoQ3RAJY7ndAeUflkhGN/mNzo99PX8GALcNZYhDvZiyvJKOkRm6fAvl6PsgDO
         hmOnZZKXEZJQu5QMleeEme7ifV9tY+GqDXJmV4q4DME3rKMfmPu/IgW9EtKC1AkrEw0X
         oT1A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+62cbd50a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+62cbd50a@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id jf8-20020a0562142a4800b00470469b0ff7si4182069qvb.530.2022.07.16.10.06.15
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 16 Jul 2022 10:06:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+62cbd50a@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 73768 invoked by uid 1000); 16 Jul 2022 13:06:14 -0400
Date: Sat, 16 Jul 2022 13:06:14 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Jilin Yuan <yuanjilin@cdjrlc.com>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb/storage: fix repeated words in comments
Message-ID: <YtLwBqpS2aYGFF17@rowland.harvard.edu>
References: <20220716135217.49866-1-yuanjilin@cdjrlc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220716135217.49866-1-yuanjilin@cdjrlc.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+62cbd50a@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+62cbd50a@netrider.rowland.org
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

On Sat, Jul 16, 2022 at 09:52:17PM +0800, Jilin Yuan wrote:
>  Delete the redundant word 'the'.
>  Delete the redundant word 'buffer'.
> 
> Signed-off-by: Jilin Yuan <yuanjilin@cdjrlc.com>
> ---
>  drivers/usb/storage/sddr09.c    | 2 +-
>  drivers/usb/storage/transport.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/sddr09.c b/drivers/usb/storage/sddr09.c
> index 51bcd4a43690..cb0ae82b4abc 100644
> --- a/drivers/usb/storage/sddr09.c
> +++ b/drivers/usb/storage/sddr09.c
> @@ -1215,7 +1215,7 @@ sddr09_read_map(struct us_data *us) {
>  	/*
>  	 * read 64 bytes for every block (actually 1 << CONTROL_SHIFT)
>  	 * but only use a 64 KB buffer
> -	 * buffer size used must be a multiple of (1 << CONTROL_SHIFT)
> +	 * size used must be a multiple of (1 << CONTROL_SHIFT)

This isn't a redundant word.  There should be a period after the last 
word ("buffer") on the preceding line.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YtLwBqpS2aYGFF17%40rowland.harvard.edu.

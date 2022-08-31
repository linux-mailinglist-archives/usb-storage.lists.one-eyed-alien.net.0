Return-Path: <usb-storage+bncBD3ITNHVX4NRB5FMX6MAMGQELMLCEYQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 7339D5A884F
	for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 23:45:26 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-11c68f9ddd4sf5030577fac.22
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 14:45:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661982325; cv=pass;
        d=google.com; s=arc-20160816;
        b=p6jzI2lTL3r14mTq0UyO90z9JLZtdmv83PNeWq+UB2gmeVSp4+kmxdyACuEWnVKItm
         vAw5u7nDy68z++ruUBd5nSfKcLiZlgbQW7JOKwK0IbiQgwYPz3tNJ0M9sc00x0pekD49
         9LUHIxkAYQPPRBFJoWWX111F0xZvcIiG+xS2wxknIE1BrvD8C/AnAbL9r+UkpY9Zzlaa
         UdktOGgM75UuZo827O1jJS1HlpzIVDVxxYVbucIQnP831KzAtMsVRKQJarV9ampaVNN0
         C2K3UrbFEVjW7qERqCZdDnYzxcw1dWBNXD2rOK4kGYHKNcy/9LngG7gvgoHFOLbmr1VW
         uGLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FQejxQo47tWYl+yKy1kBEcB7ZUuNMhgcBX5tJE1irDo=;
        b=pHzIJp9J6qignV4qqFNxSgu9HHIcsSFA8vsZWuxEck7rHvpplDSAFdpIs4X6VVQMaI
         CXkk8Yv7UR1TKt/DdTKz559zyVlIkCjbJ8QMJzGCAmZD6griMgkdnnz3rjpQy89Mrmf0
         h7Im53e9QjdHIwQ0ygsgEtv9pITcc1Nji/UA4xHM70tdRzlUwa2bThlrI2eDi+1PVyDL
         m5hsbrrO6V9lnkgmqyVIfg2DVlmI5GVA5AdbAW9KFB3RDmUhB2vjzI13V4IbxgAVsHWd
         A9dFVkx3Z9BwTA2N1JVQWSQ5InD7J/dntTBBHd+c8h3JSAnV3htj2N94WMihk/pD/BKS
         HpwA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=c5JgVe1B;
       spf=pass (google.com: domain of mka@chromium.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=mka@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=FQejxQo47tWYl+yKy1kBEcB7ZUuNMhgcBX5tJE1irDo=;
        b=N5dWXWhdL42/N/CXWT1UoRo9upTuXXpPSufE1tPDbyk5TQuCogXlEswL9YLDKMRbms
         csGntJsrRzOOYAZYRjtDgc+2WdQsnlzjo6wl+ZhAq6jtRIaIMN0WiD/6PgxQBWN+ZDJn
         D0KEyRkFMnWaQm207OZImr+hLrAlqSanFUjho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-message-state
         :sender:from:to:cc;
        bh=FQejxQo47tWYl+yKy1kBEcB7ZUuNMhgcBX5tJE1irDo=;
        b=sAv4es4pJswS3nN0BOWv9TuDsBn9MZNrnhXw8SueqvlDljhqG42gpcLnqYRFDdJmQc
         +yCInjuuQOpEBu9lqkwhEnVuqMDx/4xU8nDCB2pNdWQFchT+KJqyYf95iPCvNQeZjOKR
         ql+FIvDb9H0Q7Ajj9P466BRyTRpu8vE3hC53uDU0M3dAbIvxb1d9DjnNjMnOIfY3Ju7B
         RCvpUorC2bQ/1UVEXLHw0X0k5TpJOu8EARz18PClnUwda3KUaAbnNkhJr7oq307qTwPO
         8yOEGdyoD2AKLz6NqPC7uW6vlgAaWpgG4FXKNwR86ua3G3Hoscf+TLjocopuycM1MTS9
         Zacw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1npdSnLwh75ass2di2JF/iSuEVK76b1GmGjPDNawLpO9VkOa97
	PFkP7X5V9cfXZdapK7lQyGSlSg==
X-Google-Smtp-Source: AA6agR4SEHnsK8WkwVnLB3ol+6s0ZoggvkLSx43+r55x65fDpifFT/4X4DXNtu8saEkgSuLWup4mLw==
X-Received: by 2002:a9d:2de3:0:b0:638:e210:c9da with SMTP id g90-20020a9d2de3000000b00638e210c9damr10928635otb.69.1661982324691;
        Wed, 31 Aug 2022 14:45:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:5381:b0:10e:c5cb:acd1 with SMTP id
 h1-20020a056870538100b0010ec5cbacd1ls75989oan.5.-pod-prod-gmail; Wed, 31 Aug
 2022 14:45:24 -0700 (PDT)
X-Received: by 2002:a05:6870:888d:b0:10d:6b96:2074 with SMTP id m13-20020a056870888d00b0010d6b962074mr2348526oam.218.1661982324325;
        Wed, 31 Aug 2022 14:45:24 -0700 (PDT)
Received: by 2002:aca:d755:0:b0:342:eb60:4210 with SMTP id 5614622812f47-347bf55dd7amsb6e;
        Wed, 31 Aug 2022 14:35:40 -0700 (PDT)
X-Received: by 2002:a17:902:e94e:b0:16d:12b6:b9fe with SMTP id b14-20020a170902e94e00b0016d12b6b9femr27216175pll.152.1661981739803;
        Wed, 31 Aug 2022 14:35:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661981739; cv=none;
        d=google.com; s=arc-20160816;
        b=nd4GbH9kK3GvzpgTLagGw8xtEFVfZKq3quG3dO2F/xUg8OXHxQ0OD7xJSg6W5lJe/5
         3pS602kpI5Txhldm03yS1MpT9RfJuw3Iic/FS42J58pYi1MG+88T5PKji0Tq1KppOFXD
         5KJLMQekZEp2btrTuo8FGYSKjIPiPoQaKcD57izkS9+KFVNgW2XdMQ/XYqQmYH7vaH9C
         N4HjUDFbDFbUH0d7sdU2Bn9kedzv/TgQ9jk5Qq38gOZuxir4PxP4d7GraOHTu/a5xCLn
         d0cNxGyYbbWWMrCyZ2aig02dQAIAY5l6ehVbTf11pm5LQdPumMH7IKB+gOxrBAa4MKTK
         QIbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=k+a5ywY0A19s4ewXtlKzkVso1icQ7ila5o+nOXUa5t0=;
        b=01cdc4SeWw8c0Z42GaXU7eEyAFuylvosUyUtEnpY8ChN3T4j0jvpRcF9JWNB0eXLMN
         tMZbm9nDfExc/iB2UUwGRrXjQTkrEjY116C4ddMkCt37K/OX7Wcm7JwAm84S4cwpcj9I
         yEQlaZijyHZjtLDo8ljwVayyXhUPH2/kgjZqO97fgY5+KBpFddZuW9ouNYWPUouM8u5F
         6K+I4LVtgWE8v/GOSMqeA1sA49iyRvapiztPF9QP9J5kDNwen2a74+NkLmUOOnkgLY0m
         29KSQIXtwhm/orq1Q+jEE+5rzn695ug8WXPmf5X07Bg7BJ4tonUH6sbZu9KU44aJf0wI
         Zpsg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=c5JgVe1B;
       spf=pass (google.com: domain of mka@chromium.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=mka@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id u15-20020a63140f000000b0042c3cb09a09sor3210082pgl.1.2022.08.31.14.35.39
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 31 Aug 2022 14:35:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mka@chromium.org designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a63:d16:0:b0:41d:fe52:1d2f with SMTP id c22-20020a630d16000000b0041dfe521d2fmr23976158pgl.416.1661981739540;
        Wed, 31 Aug 2022 14:35:39 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:732f:b56c:f5e0:57d])
        by smtp.gmail.com with UTF8SMTPSA id t10-20020a170902e84a00b00174f4316c24sm6051640plg.245.2022.08.31.14.35.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 14:35:39 -0700 (PDT)
Date: Wed, 31 Aug 2022 14:35:36 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Hu Xiaoying <huxiaoying@kylinos.cn>
Cc: stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v4] usb: Improves USB2.0 write performance.
Message-ID: <Yw/UKNu0++5MtvbK@google.com>
References: <20220831015624.1119578-1-huxiaoying@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220831015624.1119578-1-huxiaoying@kylinos.cn>
X-Original-Sender: mka@chromium.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=c5JgVe1B;       spf=pass
 (google.com: domain of mka@chromium.org designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=mka@chromium.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=chromium.org
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

On Wed, Aug 31, 2022 at 09:56:24AM +0800, Hu Xiaoying wrote:

> Subject: [PATCH v4] usb: Improves USB2.0 write performance.

Virtually everyone who sees this will think that this patch improves
USB 2.0 write performance in general, which isn't the case.

Instead the subject could be something like:

USB: storage: Add ASUS <model> to IGNORE_UAS

> USB external storage device(0x0b05:1932), use gnome-disk-utility tools
> to test usb write  < 30MB/s.
> if does not to load module of uas for this device, can increase the
> write speed from 20MB/s to >40MB/s.
> 
> Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
> ---
> change for v4
>  - Update two email addresses to be the same.
> change for v3
>  - Does not send html mail to the mailing lists.
>  - Update patch, which sorted by vendor ID and product ID.
>  - Modify discription, correct some english words.
> change for v2
>  - Update discription for patch.
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 4051c8cd0cd8..23ab3b048d9b 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -62,6 +62,13 @@ UNUSUAL_DEV(0x0984, 0x0301, 0x0128, 0x0128,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_IGNORE_UAS),
>  
> +/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
> +UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
> +		"ASUS",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>  /* Reported-by: David Webb <djw@noc.ac.uk> */
>  UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
>  		"Seagate",
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yw/UKNu0%2B%2B5MtvbK%40google.com.

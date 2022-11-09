Return-Path: <usb-storage+bncBCUJ7YGL3QFBBIMHV2NQMGQEV5J3S7Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id BF97A6228AC
	for <lists+usb-storage@lfdr.de>; Wed,  9 Nov 2022 11:40:36 +0100 (CET)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-13c6efaa955sf8521219fac.11
        for <lists+usb-storage@lfdr.de>; Wed, 09 Nov 2022 02:40:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1667990435; cv=pass;
        d=google.com; s=arc-20160816;
        b=FYeqZu9G7j6wDl7jOpqI3fthAtj22ck3XfyUDuHZxRKzkbTiQfqn/6TdBQFis3kQ7o
         E/dUSKvAn2v4pm5hydClS0rz2ICSDOZrppes0Z9rdprabgaWYpRzyJEm221ZjOPuUQxi
         /4v1Ma5wy1O5vrMaSfkUHdwv6GGFrYklGFUd18sMn9boP/fdFVlJZdwLbIY+m+MJ6j53
         jGlY0Isr7ZP2bg5ggKJV3SgWGxuF+RQBsdclf2ldezrovcUFFZbwmDT0uUeg+TYxAn8U
         kC6ie28xFc9arJdF8zlCGsMT1ZDCjYeqieEiqCsR2aRWZKynRlqJKT6PriMkbnDokWlp
         /qCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=X0i5n2kKpmJAnzuIMEiPjmf25KnJgU3GyDsDF+Rlj8M=;
        b=VVY0VYX2eWzRSpk+qtMohk5wbDJDXfxL9GjH5QuNFUBps9odFi6OFxPDbxM/KreXUl
         0vauzJMrRYcERjNH3+0+5w+cZNN2OmkGz0XFwov8cbQuKVfXZpejzbHSgZwdw/j39cv/
         45eOGOtyoDkadY7g8c/0dieKLx8PVoX9XhG2X0l669+5TsZOxLFgUwE5pdXEikWq+t0K
         +ARaUL7kmQcEGTQuf1ORYOdBfn2AuF06j+6sbDa3wKKNqWxrp7se00OM13PPgvi4mxze
         yNKbX5AVOZEpQ1wIi+1IsqwqhFWP7PtBa9pMIvT0vq9huTYKbmxKXhGWH7EFWm5df6hH
         jJHw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=gPlpT02y;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X0i5n2kKpmJAnzuIMEiPjmf25KnJgU3GyDsDF+Rlj8M=;
        b=TPLL6ODofVJno4wIOStdpgnjk8E+ymJ8WFs8kcHjy31N3cl+twO3yOk+H8M1tTjmtB
         Tz4gKYTbma1cxczh5B+E37xN6MKjNSZkQ5kYgD5wohWD2cHXLGe9qHDtrENyeVCtq2Jm
         GJqV5v2Y3wCpkQsR59yED4FScA8GpJPxV2FgU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X0i5n2kKpmJAnzuIMEiPjmf25KnJgU3GyDsDF+Rlj8M=;
        b=O2NeGQghdTLbsEjr79Uh0Nv5XnSVSWIKQ6tcK7otx4X4I5cafu0qJ25MMQPFdvn3Bq
         1dAPBHxdUiGslpwjL5iXch9s8SLey6cab+3WJXuTy5FlCykkcAHUgXIGmaSD+ECPJETJ
         5jLelbPIzN5u7uvjsov8mWOqOGjAaHSr3yjt72qiBsHTWhZ79CYt6mNvTLOlgG4pyzFH
         QAuuIyXrMkS0nrnDj26NKCCClox9iJd+UNm3j8Pev46BJFebDzOyGkeQM5lpH1bMCXDz
         UiW9X1aKi7FYEwmbQiqlDc1wPP6Y914kTeomshoInh4A5KoQ+1pWOY8Db/xEbpC1l8Vx
         rEQA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf1B5QHUHQ0Y+Uh1se0cgPAUo8dHC6kkZhCy8Iy/oCM6raXJvM2a
	VGKUC0Y4ZsRvSyb+EPg3ROdNaA==
X-Google-Smtp-Source: AMsMyM7CtRlTM4DlUQ+N0frUvCivsm/MAHzhasSHezggyYmEied/MWT4EYT8zWk70IuUxdjbr3APfA==
X-Received: by 2002:a9d:69cf:0:b0:66c:474e:4644 with SMTP id v15-20020a9d69cf000000b0066c474e4644mr21250369oto.307.1667990433786;
        Wed, 09 Nov 2022 02:40:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a54:4d8f:0:b0:359:ca69:f473 with SMTP id y15-20020a544d8f000000b00359ca69f473ls5177279oix.10.-pod-prod-gmail;
 Wed, 09 Nov 2022 02:40:33 -0800 (PST)
X-Received: by 2002:a05:6808:1385:b0:354:f16:8c7e with SMTP id c5-20020a056808138500b003540f168c7emr11905619oiw.296.1667990433200;
        Wed, 09 Nov 2022 02:40:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1667990433; cv=none;
        d=google.com; s=arc-20160816;
        b=XHRmSt43Y45ixDjibqSFkstjEMCkD9kfGI3SHyc7wbTI8TgRwozMqHdfBwR0qFo7tD
         FLxC6vB11y52wlI8leYDhtTIb0RK7wdLxYzRhQj3Kpc5esMVj4iFZACFGL/JZDbIHuRS
         Ya2B0SzQC6kbAezkEg/FiTkG0zwUSZMebLu5p4wRrAdMjwuHZifLADdGAhQaO/d+HsbN
         T0LIfybvGhwjXUXOFHgel0ntM2o0Jb1AU4R7EtdFZE3KHdWFZqadcrVaq+JWlwR3rHrF
         xVczltXvIh05iV/H/PThk4RBV4Pz7krUvJw9bOQXgvJTikWWbST+vuRJY39yup+/EKHr
         p1Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lMh1b96O8Axy/k/Pin7+D70M6sbrILGpQx/Rh0biMFw=;
        b=PcsSC/IEn3qAAxYTfQHJAgHqVcM7/qdxdCV0K9ZFpoqrBM4APt5cUvQLQTXlEcYf0R
         XTl5pDi8K79mZN2iX0KK8ZB+h2pZngdytyST/jtQrSuVKeJUy8bMDZ9ogbYINLMXg6fl
         NFItY7rTbphdf603B05y6xergBrtn/6go6fW5ME8Oilo7QvzkSa8DMaDgNXncJy756NJ
         hgrPg9UxoD0KhlTEYIPClIkeBYZN9grIJyzo3s1bDFg1bfaF5K3/GWvGNyor5lL1MBbR
         HLtiOk4TbW5g+Q8nJt3KEmB1NBKKY1EeemMZhW2789bi1N8GD8MwRFDMeu55ljy2X82b
         xMrQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=gPlpT02y;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id t1-20020a056870608100b00132f0ceacdcsi15957825oae.88.2022.11.09.02.40.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Nov 2022 02:40:33 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E5DCB619C8;
	Wed,  9 Nov 2022 10:40:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D78BFC433C1;
	Wed,  9 Nov 2022 10:40:31 +0000 (UTC)
Date: Wed, 9 Nov 2022 11:40:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Juhyung Park <qkrwngud825@gmail.com>
Cc: Hongling Zeng <zenghongling@kylinos.cn>, stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com
Subject: [usb-storage] Re: [PATCH v6 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Message-ID: <Y2uDnUQKCDGzioJN@kroah.com>
References: <1663210188-5485-1-git-send-email-zenghongling@kylinos.cn>
 <fa0556e5-e154-a4e6-6b18-4996a01d2f10@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <fa0556e5-e154-a4e6-6b18-4996a01d2f10@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=gPlpT02y;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Oct 31, 2022 at 03:17:48PM +0900, Juhyung Park wrote:
> Hi,
> 
> I'm speaking from my own experience but RTL9210 is arguably the most
> reliable NVMe-to-USB converter available.
> 
> Compared to solutions from JMicron (multiple revisions) and ASMedia, RTL9210
> gave the lowest power consumption (from implementing proper power management
> commands) and the least headache.
> 
> I personally own multiple enclosures and not one gave a single UAS error
> from multiple platforms (Android, Intel, AMD) for years, but with this
> commit now, it effectively disables UAS for all RTL9210 enclosures.
> 
> Would it be possible to apply this quirk only to a specific firmware
> (range)? RTL9210 have a lot of possible firmware combinations: https://www.station-drivers.com/index.php/en/component/remository/Drivers/Realtek/NVMe-USB-3.1/lang,en-gb/
> 
> RTL9210 was available since 2019 and the fact that this quirk came up this
> late leads me to believe that this is not a widespread issue and it'll be a
> shame if all of RTL9210s are blacklisted from UAS with Linux from now on :(
> 
> If any additional information is required, please let me know.

Can you send a revert of this commit so that we can fix this up?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Y2uDnUQKCDGzioJN%40kroah.com.

Return-Path: <usb-storage+bncBCUJ7YGL3QFBBHWAW2ZAMGQEXE4HBHA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7508CBC1D
	for <lists+usb-storage@lfdr.de>; Wed, 22 May 2024 09:34:56 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-24c5b03eef6sf1092200fac.0
        for <lists+usb-storage@lfdr.de>; Wed, 22 May 2024 00:34:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716363295; cv=pass;
        d=google.com; s=arc-20160816;
        b=CPrr1XHmsuV5WU3jeHJCWwY3PeJcKkW88tSJ0c9Fgu3XzO1ZFMnfziXVLyaBmo4KfD
         pJYkDkk3bgMB/I2LIDtK6XKB0AnzyImkTvPPry3R9Qhdo2unBZf6BYdfj1ju6v94PLlX
         jzlmcvs8sqZv6qr7kNoqFMJq3jUQkJ1joxsaO8X+7stlUQw1mzrNfNPOLBTkHzMJp23T
         Un9mQAPLHo97kWBq3GfCTmj3TLJY6bmx3XQozB8CGua7WAii2CILTakQF5v7xTOqta4b
         ewjsi2BVTtppM6jlD60cwz75U5WcpY3ZnUd7d0ct3uOgC+4Z2kCrg8VBz+vbxJ6Ci89b
         j8Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zXaPeHFBQWsAT/cyaFUskgvO2rWP2d6urbw6H/f+fSo=;
        fh=ExKMUNVTLpuw7IvhPsxmc75wjR01/LD1EkbHE/4MpPE=;
        b=0cvwAjd1ujgi7r+enuFhRmVLJKnUrdxqA6JxBxVxFCi4xphlgN7GTvhV6ioNpk2dmp
         /1RP1kZKw6eTEs50OEL7qSdCS9B9aAG3CgQXPO2LIlWdiRUXMPQDovYnqR3KkQHMcUh8
         oSBl0keuijdaXTw3lRgg+l8ScfrcHjW6tg+L7mcz7IOAatgwSK408/+UvEQjN3sL/1S5
         bwWkoPGW1Rwfe4Jc21KR/k+sb0UN4U6h/tPZtWeqX7E7PZ0S1gQJ4mw+aHiJcLTrIwDz
         UKTs1vp9inn77rYB8I4oTiFtnTBGhnxQzRCrfmJYem93tCjM1BY+qxqer5bdssrkHq/h
         a3EA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="BxgOc/Tx";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716363295; x=1716968095; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zXaPeHFBQWsAT/cyaFUskgvO2rWP2d6urbw6H/f+fSo=;
        b=UHLRpwqlgI+zpJfCU0EFx2/HRoqcPOjXtd2BDD28ANTok9Hu9n6+ESROiTRj9h4H+K
         NHsZhzvGfT3N3UWi83g+T9U7NDTF9ECLK+1CN4JkegckQJkP6hirrZIQZq6d08ULMn9Z
         aKzTl574njofPVVUb1GMJwaptqeWOlFjM5MOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716363295; x=1716968095;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zXaPeHFBQWsAT/cyaFUskgvO2rWP2d6urbw6H/f+fSo=;
        b=CInx7SvCR/ir3h4jh86Os2RfmfRCPRz0w5n9Pw+XWyrxp666dGuif6oLjv6Fosypc7
         lmiFfafvy4Q+Hgng1yFY0BkW9WSK6wT8esvLAkwinbXuxaFrgS2VZVf2JG5vNPtZck2i
         NKps1Ax95DhXjVw8+VT0yz9WX1LJAYFH3o2CYvMCsab2ggtykP7QI1Rix8kpHysUAiVF
         yrq6TKcCYAqeGXPtEHEmJGBow70qEgYuPLywEofVaRWvmhVNY9KDiGxOe3Ew43bXKA6I
         kFrmq2jFSJ/3i96G2Yjco3oJDoc7R2p/hRHAkaSOsIybnCXVO7bBV5xLlBdfo0WmeFnx
         MkVQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUzYXvyuEYLPlvBiO/IluEPJU26qJc/KzcE6zAYPKlEXl7oBoXLmol2v5I4amZ5VkL0pQ/DZ0J7/BB/J14k1jOKAu0iuI0zcj55
X-Gm-Message-State: AOJu0YyKJP0QWbQmgP0YxhOVRiJL41KZ1za/q0nK9I8ZfHjf7XZcv/i4
	LW411JC4R6TszHseSYYw8JcVfKTuXNDUE2R5okNCvkaKGxjKZ2i+x1Jrmto6lEk=
X-Google-Smtp-Source: AGHT+IFSXKiN3mY4iK7F9xfvqv4Cd6Q0+n8FmfzNJ7VUSx7RoB+zq2TtIE7T+QSfxKb1mY2OjiLd/Q==
X-Received: by 2002:a05:6870:41c5:b0:24c:5287:b342 with SMTP id 586e51a60fabf-24c68e5e148mr1281652fac.59.1716363294830;
        Wed, 22 May 2024 00:34:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:f785:b0:245:46db:3e3f with SMTP id
 586e51a60fabf-24546db62d1ls87341fac.2.-pod-prod-05-us; Wed, 22 May 2024
 00:34:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV181Ijbx9NaG5kqHhVr/re7cTQbA6ZiYmtQwrEG4Mwy3PloTi3+kjyIqfR+Ao4dGor9UDB6HuhsWjowCuFUSl/DOdYiZN1LWtm1TfuBEopvKsyPec=
X-Received: by 2002:a05:6871:5d2:b0:23d:6440:fd7d with SMTP id 586e51a60fabf-24c68b27370mr1496845fac.19.1716363293842;
        Wed, 22 May 2024 00:34:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716363293; cv=none;
        d=google.com; s=arc-20160816;
        b=GtahxnSuxkm26nwwzbHULk6qRSHI1vOZqN0Bbgmcf/9hrVdRcvUoS8PWxYLBI+dhoL
         IgYoA7FbqP4Q//o7rsts4g9xH/1xevw3DbJrfqKo+uMDMBMZ5YuB8Bi+2nbT732kfKAo
         VMrNnXVMoc1dN9h60FIGqHf/WA2PZXPWnEyX42XBTm1S5suI3F+QNaXgVW/SL1o62rOW
         mBvqVndpapVfMRKYvQKLtuVyxxsCjYUVzH2AJ/cbXvnH4cR59i6hJIpkJWzQlDokNnDK
         8Oy2F1sz9+XEx0zMnTU5aesxk4NVBoCMXs9oto1iAmi3CUcTsmsF4son0+InuAgZDYcD
         +ZuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LtjISD2lbLxp70hQc5Z5mwe0ZOQisKZWMR0MnHX+DdY=;
        fh=W3CtdeGGCHP8JS0pQ+YOGoZaf5UniFfF5rvgC83SXcQ=;
        b=tsiEUUQFKDoo9fpc60Ltn1KLm3cmXjpZcRjhibMKe0yeEpn6Paq5CeFrkeFS202Ojm
         ztlVthtuv9cTt6mgDjZD18Vom5o63GqSquLK9ldKEmqSDdYPrD/8Yqi5paqUJy1jsa3l
         kKpXHF9qVKFW8hF+2itwCXX/Aq4ySTXZjFKEZEDj1GF8ybPj0JEdGEl1ZVXFcfnhVJUV
         tjy1BD78WvWhD6l0rtgbP8+m23rpooet1hhtBK38obA/iReDYU5AEzNx3zV9/BMizThJ
         rDDqfkDczAgaMqldadJKTscfOo89dzoAMR3etKcAmt2QGY+msioTFRfN3zxXuxvd821F
         a3Nw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="BxgOc/Tx";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 586e51a60fabf-24c5cdf6573si951253fac.9.2024.05.22.00.34.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 00:34:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6C86E626DA;
	Wed, 22 May 2024 07:34:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBBB2C32789;
	Wed, 22 May 2024 07:34:52 +0000 (UTC)
Date: Wed, 22 May 2024 09:34:50 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Shichao Lai <phyhac@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	syzkaller@googlegroups.com
Subject: [usb-storage] Re: divide error in alauda_transport
Message-ID: <2024052224-motion-perish-82cd@gregkh>
References: <CAEk6kZszgHVYN8r-AsPw9YtGGf459j0uDMYLdOoTixhE3YJCKw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAEk6kZszgHVYN8r-AsPw9YtGGf459j0uDMYLdOoTixhE3YJCKw@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="BxgOc/Tx";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
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

On Wed, May 22, 2024 at 03:28:01PM +0800, Shichao Lai wrote:
> Hello Dear maintainer!
> A new bug was found by our modified syzkaller.

Nice, do you have a proposed fix for this issue so that we can give you
the credit for resolving the issue?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024052224-motion-perish-82cd%40gregkh.

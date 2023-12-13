Return-Path: <usb-storage+bncBD6LRVPZ6YGRBPPJ46VQMGQE5PBOUQI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DFA811C16
	for <lists+usb-storage@lfdr.de>; Wed, 13 Dec 2023 19:15:26 +0100 (CET)
Received: by mail-ot1-x346.google.com with SMTP id 46e09a7af769-6da304d6ef2sf2053251a34.3
        for <lists+usb-storage@lfdr.de>; Wed, 13 Dec 2023 10:15:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1702491325; cv=pass;
        d=google.com; s=arc-20160816;
        b=QLh8GTp54PAux2INLIFM/oxNOMX41wlR21f+asmbMahxu6nD+1XFer4TOMYd75qMjH
         +pnRMU0iVy3kVSfJE6Pp0psu2i7VnysvfAsvGyjk24HIB2Oy4QoVQf8qUVXUlYfF0Hem
         KAmgDHKQMTu4NLEpeQDPJDlH8UOnSKJ9LmERgGTkr3yfAGt4r43+746wzlJ7K/Hu+HWW
         FvYr+nBeApJb+jU06mzGqTUgImgUwsyl7dI+DT+02dey5x5LzTQpog0qRCdI47bfau3I
         Lyjl9yzVVEezVNV1eUgrSM1FdZ8Fz0Ae4BbIy4CMk9HTyvrSWyGa9y6II2a6wFsjuIqQ
         MI2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qJxYGGvVQkH8aSJWKmuDWjQIlLcOsQrDSzmlgiMdSIM=;
        fh=/XmA3MLM8tN5FZIBM9sNrJXkPmgrq6BGAqnyw6yNJkk=;
        b=JIANLE6SYzDdp7s4ssdnUbu6eaQ2ljM9hy+pK/50eG3mLAxSJj0nQpb8vgM02Ufejv
         WbtY2SufuOoKuy3WOnyAsNjiz4dK53a4BxmwWEwqlDhjEeJzNfXhqZE7MTXJszQzSPqk
         RB3sbEx1SU/EqCInq0gnHIV3ZlK8PB4mU4eo2L8OK/eci5HepFRmCWUdSdNxvqxRKY3U
         d2yTDWU03uspY35pEq0VD6ocH0nL5mTxueKYLaea9RMssETKHte3YZOtjBx8sTmGsdQL
         +mFSsh+3gOgVxAdWNRjy9OTTGtCOTgxDwgIFFAzEz2bnsOf3HcbwnUJHDXhIR/ewh+Nw
         YSMw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6578be04@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6578be04@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1702491325; x=1703096125; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qJxYGGvVQkH8aSJWKmuDWjQIlLcOsQrDSzmlgiMdSIM=;
        b=Jh0ft0f589fJTEpMG+pb/W98GuTRCP72vyPp/cB+q2iyxudRRbX0AdZIsg7K0XMjro
         0hlbt79nf9e7OSnVEn7BwAPxVxy/g6LjYIxJwLC/G4D3zfEMJnrZulENIR5ptFupfZAV
         XYSEXv56gqgva537rtAlJ0UnBIX+DEk3IXC1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702491325; x=1703096125;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qJxYGGvVQkH8aSJWKmuDWjQIlLcOsQrDSzmlgiMdSIM=;
        b=WDTtYTNniP827UDeWliHkbxcF6oCIyStWMXJEShTPXYrHzKDT+OuSZUGfvjX9TD2QM
         jsEjcsrK9ZpEd+iHrbS+5RVBpZEd0CYPH8mF/xxmfp/LT3eo/Ssg0juM8kkjD/vn/uVJ
         k60VlNx4db8HJm3BwsAe9UkZj7vDtyMrqI5BqRMCju/WXLDQzgN+hQVY2t1VkjOnDLI/
         ZM6W0jS3t+Henr+2rFGY0fInS/fJkLjNdq7otVG1kxD168evl88+CePYqZee+OvZ+H9i
         US5fbXII0QDkh3plY863J7eb8NjGKE5YKvIa0SSS+1zhUsF8d+iQ7Ycm3thpLteQov53
         XX4w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yx+dY/f372l6hvU+ryFuv5XSs/8yDZRl34wzSHecpT41ytjLRqg
	ce/+nQn2KLDWsHsqnLjOCyFyKw==
X-Google-Smtp-Source: AGHT+IGwsUYPUGrRmYH7ZFoCx7cYbM6Rfs3M2b4oNqFbD+J3psM65DBZG69sCYtGNd7C3leF8imTUg==
X-Received: by 2002:a05:6808:16a6:b0:3b8:b063:8259 with SMTP id bb38-20020a05680816a600b003b8b0638259mr9954012oib.91.1702491325161;
        Wed, 13 Dec 2023 10:15:25 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:ee26:0:b0:67a:b34a:6626 with SMTP id l6-20020a0cee26000000b0067ab34a6626ls2017571qvs.0.-pod-prod-05-us;
 Wed, 13 Dec 2023 10:15:24 -0800 (PST)
X-Received: by 2002:a05:6122:13ab:b0:4b2:99a4:ff9 with SMTP id n11-20020a05612213ab00b004b299a40ff9mr6208275vkp.13.1702491324298;
        Wed, 13 Dec 2023 10:15:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1702491324; cv=none;
        d=google.com; s=arc-20160816;
        b=c/33/OIr8MUTqf4dIB39/qPK8a/yRrImCBEuEb55EdjDOi/s4FS28hFtc9ntOvDRZp
         ty3kE5nBiOEfaGXZCwSaUNhGCucwHi5ZURb4evYgzeT5vAMZmG8Ay2PvoqHEwK+UQ72g
         wOV4Z4Lv3jigvYKXck6VsYAG9tJ0YWVisDZJ9egqlP4Y/EVIOU22CcpnUDT7QOPa9H+P
         nN+RO6uGZJxnyQV4Icu6TUdUeRin3+WgpN3HVRvEXjzZwudty488GG7cQ6fV0+AZJOkK
         bYlH6CwXUnCoFms2srZd8QoTcsfyf4ZeQEdm3HzUpDjQvQL9rmpEObmFDBQGOXkRbB0B
         sgiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=uGFXnweZejLXVh6+6lRSg20GtE5N3zmHu0VdbSDw9zI=;
        fh=/XmA3MLM8tN5FZIBM9sNrJXkPmgrq6BGAqnyw6yNJkk=;
        b=HPEbJIRRnsPkUAzBwdSZ4B+4p7HOGrfaEnZIp+0e/VN7WJ4LgdecW2x+nDmVmJGcfe
         takQCYczSLhUS4EVn1qmtDivapOkexKlRy/s9gH84sa7n/3djxH9fJXHQJ3G5RcL9ldm
         sRn1xXXUOeXGY0m+jrotgGk5AaIXVPnasjkFRn0WmOlG6NFIDUEBuR0Sv8iym06FBi42
         N7nrDkqTsIHnPZLGQFQW1tg9jCf/iFZGer9jbQHS5uEZE9EFOcenoMlEIkXUOZn8obVB
         nWx9V8a0TTMBna43jV/GLTAtFDT2vnA60KnF3Azeeos48RIflTVvIFHGSCGnaPRLfAbe
         UcdQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6578be04@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6578be04@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id s185-20020a1fdbc2000000b004b2e7290a15si2598634vkg.82.2023.12.13.10.15.24
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 13 Dec 2023 10:15:24 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+6578be04@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 207225 invoked by uid 1000); 13 Dec 2023 13:15:23 -0500
Date: Wed, 13 Dec 2023 13:15:23 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Lee Jones <lee@kernel.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 12/12] usb: storage: Remove snprintf() from
 sysfs call-backs and replace with sysfs_emit()
Message-ID: <0bbff761-a39c-4ac5-a906-8d55ad02d168@rowland.harvard.edu>
References: <20231213164246.1021885-1-lee@kernel.org>
 <20231213164246.1021885-13-lee@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231213164246.1021885-13-lee@kernel.org>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6578be04@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6578be04@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Wed, Dec 13, 2023 at 04:42:41PM +0000, Lee Jones wrote:
> Since snprintf() has the documented, but still rather strange trait of
> returning the length of the data that *would have been* written to the
> array if space were available, rather than the arguably more useful
> length of data *actually* written, it is usually considered wise to use
> something else instead in order to avoid confusion.
> 
> In the case of sysfs call-backs, new wrappers exist that do just that.
> 
> Link: https://lwn.net/Articles/69419/
> Link: https://github.com/KSPP/linux/issues/105
> Cc: Alan Stern <stern@rowland.harvard.edu>
> Cc: usb-storage@lists.one-eyed-alien.net
> Signed-off-by: Lee Jones <lee@kernel.org>
> ---

Acked-by: Alan Stern <stern@rowland.harvard.edu>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0bbff761-a39c-4ac5-a906-8d55ad02d168%40rowland.harvard.edu.

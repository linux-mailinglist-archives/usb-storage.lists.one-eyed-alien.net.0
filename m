Return-Path: <usb-storage+bncBD6LRVPZ6YGRBS7EWKQAMGQERBFQSJA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E79D6B5E23
	for <lists+usb-storage@lfdr.de>; Sat, 11 Mar 2023 17:54:36 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id j13-20020a0cc34d000000b005a37f812e48sf277502qvi.12
        for <lists+usb-storage@lfdr.de>; Sat, 11 Mar 2023 08:54:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1678553675; cv=pass;
        d=google.com; s=arc-20160816;
        b=lVcWAd8KAeF1jm/oQDp4OPD4HGE977xLyB60yW1dby1P36x/87yB5WdTRVZcZaRVAb
         EMGCF34PfUK99vonaP5BF+9jDLsq2IRVH/Llmkw5ng6ci/LUS8R4nLthUOv5bprlRH8r
         sNUsVWufhOwhGs3DbG16h32d0ujK2delWwqaxSwZzhfF49zZ6y6E7MbIMhtP2nWD9gQ/
         p20ka1Ne7v17Ub8NFSmNSN9Enfu0aEN5UU77YmuKg+oiT4BcKwWzZg1DOW29BGyiAHq+
         6JoUcNQrZtHb7+2QIboIxY4WJhOX8Pi6BU4ZyjUKTCcszBh4XM2fJIbORxuVzMJmEWRa
         9sug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=QQVNKilCyR963Ak1Z8UJBWUxj4FDB/mb882VfCQFgs4=;
        b=UwTNGNDEkucrTTRX+W8ChGRDXiuJGaOGY3XHVWV4x6EdZT7JdAmKhb0jzGvbAHOwqN
         Jjdy2Lxor7v6fz3I1s4kG8Uz5/MabiLWrXb7d+doCVD+4WIcjTe1DUKWHMAPa66k2/Da
         JqZvtjqcnOSi9Oo+gzJCxuYgAZSXlO2/4m5WPlX+Df9HFyaCK/d5NHNQxxhgAWTnQCLf
         NFtLMFWCQIUz8xpxqxSBJoO5HGDqMJgqdhZOEwft1bWKvc8cW/+9RNWZ0EtoNdT0ci5D
         6EkGS0nS6ZozcsKc84ycDYPrpKlbC5Hqp/dDFR6v5FZLqUOJkbnNzKvnOwVlvw2EAnw3
         TTyw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6418f420@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6418f420@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1678553675;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QQVNKilCyR963Ak1Z8UJBWUxj4FDB/mb882VfCQFgs4=;
        b=K35q3dQiBXXk86pny+/C0DPRC0eV4jyb+eLpeu9gMgefv6TXKvO8bwR4J45xQIQd9V
         rfTrTorxXa7hpda6Fh3Zypm2Rz1lovXNeo7CCeiwNQX2pz+mH8742+ICnRjXZBtspa54
         MzlfEJO216z7ZELDgvaVjXWr7Gy2cmkEGCaN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678553675;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QQVNKilCyR963Ak1Z8UJBWUxj4FDB/mb882VfCQFgs4=;
        b=2gL/9kwCXQ5fxCcMaJfhi86ITyuTQ8MDCgkuUccwRtC92kKpiwYXVeI3cYB1V+SbO7
         07Uzike8S19f+pH0trrAzfPCWlRcyRD89N8sx6FSfRtxOMtNVQK+HqE3H3KxrHFo58jb
         EODhIHuySExb/UGoqs1QiD5FjQmQdhrUIwr9lMQpcCeGNCskXwL40ONCUYLRsE8UA2zw
         HIku0aEYcoelfMmzHuvjYfihg6k0AEbC2zrzbJB5ElkWw5tcOMXMRpxvOvB336VbPRP7
         PB9P8Qfmb7DxcO5kdx5Fw4kwCItXSGg0q90dGSeXzWKFoLQejSFul0Ql5nALnjzVgL9Y
         fKUQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKUhZSfz+/IUcM/hgsQayHUmuBDtvrcV0NwOK8WB5onsJVzCh3Mi
	UhzmuRKEFwcMtFvmZ+jmv3NucA==
X-Google-Smtp-Source: AK7set/JfJbikdZd/iBWh3aKZU3x8DlADeFQ0HL3fEuCzUwNl3p3arZJUc6jrOtQvnWlvOgUfPUWDQ==
X-Received: by 2002:a05:6214:4a46:b0:537:7476:41fb with SMTP id ph6-20020a0562144a4600b00537747641fbmr614051qvb.7.1678553675495;
        Sat, 11 Mar 2023 08:54:35 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:a0d:b0:3bd:1b92:edd1 with SMTP id
 bv13-20020a05622a0a0d00b003bd1b92edd1ls9047878qtb.9.-pod-prod-gmail; Sat, 11
 Mar 2023 08:54:34 -0800 (PST)
X-Received: by 2002:ac8:5755:0:b0:3bf:bbb9:a301 with SMTP id 21-20020ac85755000000b003bfbbb9a301mr9846409qtx.14.1678553674583;
        Sat, 11 Mar 2023 08:54:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1678553674; cv=none;
        d=google.com; s=arc-20160816;
        b=MUQ+osU7c7PcbCPKO8mHtzYVGdxEdvQCSAiRP7RCmFuOskIz5TivD5nG5pNixsTf2m
         EiFW7DqT8aVinnTQGSUbWfE0fct5Ns+qX1YvRy3utgI6moyCSZ5zoLaglcJOn5k2X0mu
         +TBZmabmDW1o5jkbDeir4B4mi5bWy2TaA2EAbnqaljkY22XG+qm46tPy6UX/XHiVnb7O
         U5avikaetOxkUOXnpxJPa2yr++Es1q2I7zFst0i9gHhiC4fgIH8x6OdocWt7SP5uGQfg
         EZr2SfuVeBkHCqx57sB3yQyHYYHizNohyKtkH0aoqDyZkEOORpQNDJalGaR3KeLC+9nE
         ATXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=HjRFNDizYUzwf9nLUOvUsf6QMlBPzxBInE3U4bMnQdQ=;
        b=lRkqLf0AP1sYChD7WEoB44cctbKlLeDUSrk4KwTvPeJB8JZNLkBBb7AnUUlT0KpjZD
         HaKjr1cwsMWAsTmYbgRbq6eB7fuhSlFz54iHPDOQ4yMytVGLoEnSnyKmkqKRnPveR7Gq
         RrA6cBO2jQvd13jJi7lkutuw6T5geos5E/3mcxWpzAzK5tVrn9Ir73rqcnI/73dcgIbc
         pfF+WCVXWH8X1NQxplFZEbws/NRVZ4cBeudorVZM+NnryQ4xaMqtbWSmzFYwYNVq/PUD
         HkqH2+p/ROIxLSnUAdUXJWSWTX+q4McahCGuUjKXn8uPC91nr96PyBYGktUsy28j9e9Z
         ggAg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6418f420@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6418f420@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id d8-20020ac85d88000000b003ba00b95ffesi2046704qtx.529.2023.03.11.08.54.34
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 11 Mar 2023 08:54:34 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+6418f420@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 684076 invoked by uid 1000); 11 Mar 2023 11:54:33 -0500
Date: Sat, 11 Mar 2023 11:54:33 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Yaroslav Furman <yaro330@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] uas: Add US_FL_NO_REPORT_OPCODES for
 JMicron JMS583Gen 2
Message-ID: <7f670cac-aa36-4bb9-a2b1-4451e4e85fab@rowland.harvard.edu>
References: <20230311123418.16272-1-yaro330@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230311123418.16272-1-yaro330@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6418f420@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6418f420@netrider.rowland.org
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

On Sat, Mar 11, 2023 at 02:34:18PM +0200, Yaroslav Furman wrote:
> Just like other JMicron JMS5xx enclosures, it chokes on report-opcodes,
> let's avoid them.
> 
> Tested-and-reported-by: Yaroslav Furman <yaro330@gmail.com>
> Signed-off-by: Yaroslav Furman <yaro330@gmail.com>
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index c7b763d6d102..e4ff28ba93e5 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -97,6 +97,13 @@ UNUSUAL_DEV(0x152d, 0x0539, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_REPORT_OPCODES),
>  
> +/* Reported by: Yaroslav Furman <yaro330@gmail.com> */
> +UNUSUAL_DEV(0x152d, 0x0583, 0x0000, 0x9999,
> +		"JMicron",
> +		"JMS583Gen 2",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_NO_REPORT_OPCODES),
> +

The new entry should be inserted in the correct location, according to 
the ordering by vendor ID and product ID.  (Hint: 0x583 > 0x567.)

>  /* Reported-by: Claudio Bizzarri <claudio.bizzarri@gmail.com> */
>  UNUSUAL_DEV(0x152d, 0x0567, 0x0000, 0x9999,
>  		"JMicron",

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/7f670cac-aa36-4bb9-a2b1-4451e4e85fab%40rowland.harvard.edu.

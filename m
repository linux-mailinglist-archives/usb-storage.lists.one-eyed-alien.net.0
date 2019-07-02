Return-Path: <usb-storage+bncBCTPRFE7TUKRBBGG5TUAKGQEFGTYDCA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5155CC9A
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 11:25:25 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id s5sf19161196eda.10
        for <lists+usb-storage@lfdr.de>; Tue, 02 Jul 2019 02:25:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562059525; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y0hUM4G7dOxZyuCN0ANS8t115pk7rtDqOOBUjupNTA8qdvaeG3G5Qa2jEDuxsTUSlO
         91Sq33wam5h4XRGL+n8subDjzLhofd4D/xxkxG+hlfytFbyV0tYW3QqWfvvmPBiARQ0B
         t61hI6PYPA1vf7HlWY6CLDSt/ZpIq//KcTuoVzUuQKWYH54KQVVR+lQBM3Pp4+ZFHIMF
         jefWCSyZoFSRY1VGmclBTRKkzAlVkDVkMfhCFUiAmNYpqWIjCBnyDPmAYEprgl16znnJ
         ksN+NvrYJgWWYP3X1qtnuYIsuN8ipdlPRZLg84yj/eJzQj5/HTnn0O9vMZbkuuj68vNh
         V9hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=vJKlr/AYcNJnRWYkhclnLModoELZp4rTTzSRWQ7JtgQ=;
        b=ZysGLB/eViX0fJOTziMc5uHtudWlaDgT/Il03nHmxKskY1gT07Z8jiO4AXwsyznFpZ
         zKIs4tIgC2s3XMsOOMaPLW4g+KmmPrYXVldXOdC/gfNbyiqkVQfqqVkDVtnijxssPiiB
         Eg0oU574IF+09bxeB3dk2kc27nowSLoYmLtRFArakob//rR5G1+vD78e/V+gwkF7+B98
         ujE42WEpdMVIVtYOtZrZsgbxAxAtJYS1mdNKeBaSrKW162qLlCpaqbs9uBvh1V6NHdAo
         hhGmJ3lZP3udx3e1pbCEDV+Azn6zxaVx+KCmnTUG4mwS64lTo1TVw72Ytjl8KKEBrRcf
         Mbmw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vJKlr/AYcNJnRWYkhclnLModoELZp4rTTzSRWQ7JtgQ=;
        b=TSNN02MZnK2I7rXn9+F5SOKGoy1ZkodDx47NQyK0VaphipE0rgnB8PAPUYkpGkjm/c
         kvPs22gKTMxgplPLmb0J0/CJtn0rjgvrcRE20FZOHe+pQlrkTMpmYd1yLV3QPLLPYYlq
         joO8pd/DSdOtbfgKzJ+dlrDnKNsT28KqguSeU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vJKlr/AYcNJnRWYkhclnLModoELZp4rTTzSRWQ7JtgQ=;
        b=lFk21NMpPQAyrK9rHwPr4GubKuIlUoLVrZgTxUzdrYLMkHMMyehaNaTONQfvZpHn/7
         5miMM+kVWN50YaN/FWw85InWX1z/t8tgE0TF51pOPnw2KJqtxAz4updZo5QN2b5Pft0w
         47VEbRA6mhLrb+fKrIIiTAVxCOSbOOtik2HeJ2X/nLrXJ3IdeZm54K9aI4YqbhXtF7dw
         7dim0H1HgvZLTCWZVUgSVk2JIb1BG+zMCEbNi2Vp5f+67Bpdk0uJ1pLYahFASKTFygZl
         GbyepkXA/P20nbUiu5X/SCjDakv6uaVlbDoFb2tSv2z+clG+zjypF68ZMzvv15uLrqYn
         9MWw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUbYq18qtYzViKs6rrbNRXpHqAk2orrFsDBIUdedNWRVC9B3aO0
	7DKI0/fRKlbBUX4VumpSpo+lQQ==
X-Google-Smtp-Source: APXvYqw10WMtC/a1675iyfA4Kk9kI5msNcx39xNCj7ODCP/38oac7bXhOX40iPBioGW0IFhNUTzTVA==
X-Received: by 2002:aa7:cdc6:: with SMTP id h6mr34346335edw.5.1562059524916;
        Tue, 02 Jul 2019 02:25:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:8efb:: with SMTP id x56ls3971580edx.9.gmail; Tue, 02 Jul
 2019 02:25:24 -0700 (PDT)
X-Received: by 2002:a50:b6e6:: with SMTP id f35mr34329110ede.82.1562059524302;
        Tue, 02 Jul 2019 02:25:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562059524; cv=none;
        d=google.com; s=arc-20160816;
        b=J/OGHW0sE9RqAweVfP9Dwcri3AIGDS16T14Y6z5dirT8uWQeGhq5I9GUwDXNq3T7/e
         fLyR6BSJJkBNw7rM9LM31skJhB3PnlsX0wmbYIYKHYxhAfeo7MyTEjtqGR1AaNJFSe+V
         u5Ub3vxr7pqlehoIkhtgtliPgVImM518ObmPw6hmIUdW8XHsjjwCMnknorYow6N0h6g8
         azkY1ljuqjNMiDhyx6FWwEdbaX/xZ9T7p5fnYUhTAvfGs5S0AeJFWnNKaCCmKSj2HWbF
         5yz1gWMOnUcJ8TzwGCHISpMitxrabat3jE7c42dXwHcGBmND1QAmJPUB5qCkNnIMl/Go
         H9xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=yndzJIOEYPMmtZ6tOzeuiK9TeenuGwFH2hoVojiZSkA=;
        b=VLpol7UhFxoCcu5jKHpoGgIpbtRsL6ce32MaXkEQrFdmqQr620YKlmjvYoh5rgas51
         0L0doNKtmIra7+AkA3y+TiQ8Tl/av7Ac5Z/3HjNbd2McU5V527zHpDZD4f4BJ/g5AwY/
         viykjg9i4eHQt5owNaD5dWqqh6yB4dYj7qXAJFqas0OZW6p8wb5aKZk0ZcTDpHXpSnpa
         A7diG9J2IONtmnlQOuPEN+eUnZ2613QplOrWwiRB4CTgR3bSs2RcHbhC0g1wtIG1lJZD
         IqOCbf+1XYWVhCu2yU2IhlL1WBDrN0biknyWp4evazQ83Zw1HEqp9OCu1jkLQmy2Qs00
         KgKw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id rk18si4047149ejb.366.2019.07.02.02.25.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jul 2019 02:25:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 5513FB150;
	Tue,  2 Jul 2019 09:25:23 +0000 (UTC)
Message-ID: <1562058690.5819.9.camel@suse.com>
Subject: [usb-storage] Re: [PATCH] usb: storage: skip only when uas driver is loaded
From: Oliver Neukum <oneukum@suse.com>
To: JC Kuo <jckuo@nvidia.com>, Greg KH <gregkh@linuxfoundation.org>
Cc: usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu, 
	linux-usb@vger.kernel.org
Date: Tue, 02 Jul 2019 11:11:30 +0200
In-Reply-To: <f43e7ecf-64d5-20d2-0461-85a55fa28a33@nvidia.com>
References: <20190701084848.32502-1-jckuo@nvidia.com>
	 <20190701085248.GA28681@kroah.com>
	 <8e8e8703-8620-b625-4917-bbb8d999caa4@nvidia.com>
	 <20190702044249.GA694@kroah.com>
	 <f6ed2505-5da9-c217-a052-a19d197c5c8e@nvidia.com>
	 <f43e7ecf-64d5-20d2-0461-85a55fa28a33@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
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

Am Dienstag, den 02.07.2019, 14:56 +0800 schrieb JC Kuo:
> 
> Since blacklisting uas kernel module is not a good idea and could break UAS

Then don't do it. If you don't want a driver loaded for a device
blacklisting the driver must not magically assign another driver.

> capable storage functionality, do we consider forbidding making uas driver
> as module? That means to make CONFIG_USB_UAS a bool option.

No. Absolutely not. We cannot force people to build UAS into their
kernel or not use it. Building either driver not at all, modular
or statically are all valid use cases. Just not building UAS must
trigger a fallback. And we must have a flag to override the kernel's
decision

Making driver assignments depend on module loading order is a very bad
idea. We also have the necessary quirk in one way. I would accept a
patch adding a flag to force usage of UAS, but other than that, the
existing code is as it must be.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1562058690.5819.9.camel%40suse.com.

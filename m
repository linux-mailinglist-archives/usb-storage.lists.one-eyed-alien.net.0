Return-Path: <usb-storage+bncBAABBYFF4D6QKGQEUJDD5MI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id F15D92BB4BA
	for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 20:02:57 +0100 (CET)
Received: by mail-oi1-x245.google.com with SMTP id f66sf4847240oib.9
        for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 11:02:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605898977; cv=pass;
        d=google.com; s=arc-20160816;
        b=zj9IZFTn3zqohRytwylZ+Tv/S/iTJBKIVTwdk0N++0t4Y2+rdAKUq4r7jOz+1VqPbM
         mHZqDqESqfyUsCgnjevSTuJQ/ejLhtSBFO/SgkO2scd4TLrHrmD13gm+OMqn8+PKp7fE
         RHUf2UW5Jq0n0/qiTB41lCQKtX/yYGbXreR7E2Exfu/PqZVg62pFknd0rJ9tMxGZPreY
         3EEeg7IyZerGl+lqg3ytZFHXWqo2veMivEo9VZJT/TlhVyPnjAiWhwSdST27UMfRAXw1
         s4FXiyjluatsi0ISZbE6/R0kZSfhXlEYRDFYuXRXj4ZdEIFXDNFt5TsdDJqtUupU6jjT
         JarQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=RCxWra/lXL3Z+NQ6g1ke0oAwuOEVMw3lR886ui9f7h0=;
        b=Z5Yd1co3eng6R7lfFfTfoAJXdfdLf5m/bJbghztYawe8vJudROif9KC8yLCV5JsJup
         0plpWSe6jvfw82D5udpD+ZHYAbGZy7hR9HXG0Hf0SQ9hEqM8XzOXM+lEPkQ8vvN/sD/6
         rjLUiCG+wH+ocTFDun67zl5weCxTyNdDj5fgRLXqjtLycYLU8KSQjGMF6nQIL7kTzHmJ
         3vq9Dx91vU/bJChD0QQErvqVxav6HHcWcSZfmqLJdCSHk06a9f9XJRwZuVSAyHmeMGkc
         8KqwMw+wX588J6okIaJ6H+L/TQmtEBce6cFqxelGJhzzYVpGcJB/G9glrsx7HuQb888u
         OdnQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=n09KqYny;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.67.41 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RCxWra/lXL3Z+NQ6g1ke0oAwuOEVMw3lR886ui9f7h0=;
        b=FFK1AfVztQqTjLnFBqAIzcRNgM36zNj95OfzVI+pOxlKHBDosdwUMPtqtQk9Q2fprq
         UBF65vJ9wtCS8PRBsy6Nuj2KJWpkOBgWlVtg+0ksGHiW808aAzr3HB5e8AKiIOrOzVNe
         IO6HpmOQzW9Yt73eHMF3jKGe8Uq8TLukh1xYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RCxWra/lXL3Z+NQ6g1ke0oAwuOEVMw3lR886ui9f7h0=;
        b=UzNh01FD2mTdtmlgiSsylC2cBMxtiTdn9vEoP34RVK5kT9+Zfu4CfhF/66cmDx+BQB
         QfRlXuj7+p9EHs8POLSf5fwrbuw8oESdUMpLTp/14dzv5Qs4qYGykaOAtjwPX+jLfPwD
         wIlgWT02KJOnV9Upte/ahxbu4hL8URt3Hnvt4O8GgKu53ibZBcdmMhHoaHzQ0epqU+v/
         lqS+VVzsKD+849z4rLdozVvnFWOB7s+MFFfWlYuZiuJ7+4eLL8otj8rLzKm3YKq4FstH
         L8jP6q7sSVykwV2qtIThgl4KWSt3A+S/iK3/S4O5HOvcjeLxkM6rAr5EbHwN1eNY1WRw
         Q+wA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530rAobA769vV+eSLICXJqFrvL3KN/tauAy1OGSJi4Msa0LU/lKS
	cN81g5jBlIB1yHKMYSq3b07qGg==
X-Google-Smtp-Source: ABdhPJwY6J3zrOWVKlKeY8eZAbafy5avNEcWCEoooBogsUiOzN6fFO8V903ZBwxjumcXkfVNBh7u+g==
X-Received: by 2002:a05:6830:23a3:: with SMTP id m3mr15546685ots.135.1605898976584;
        Fri, 20 Nov 2020 11:02:56 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:1f59:: with SMTP id u25ls1856362oth.1.gmail; Fri,
 20 Nov 2020 11:02:56 -0800 (PST)
X-Received: by 2002:a9d:550a:: with SMTP id l10mr13462046oth.357.1605898976310;
        Fri, 20 Nov 2020 11:02:56 -0800 (PST)
Received: by 2002:aca:1b0c:0:b029:e3:e173:f488 with SMTP id b12-20020aca1b0c0000b02900e3e173f488msoib;
        Fri, 20 Nov 2020 11:02:32 -0800 (PST)
X-Received: by 2002:aca:4d06:: with SMTP id a6mr6762245oib.84.1605898951699;
        Fri, 20 Nov 2020 11:02:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605898951; cv=none;
        d=google.com; s=arc-20160816;
        b=Dqx5WxTiuHPsEe0MFWHs2fAtQjiXTp+EkBIcwzSEjB/Z+Ld0uYatDk28cD2f/I/kPC
         lIv8S6eVcFvCJbfue77i5OtQtBsxeGLScElU5/rWbcN6CHVAJSmyZ9fj4KbYsTlAxZZM
         InfY4S5bLoPfEadGoc3fS7ji6O73sFSMXlRKMximmYVYNKDQ8odgOwFRU9nGaot6xzmL
         jDLJsLl5wH5bc/lBCrxflxqpUd3ECLDagArmwDaKGN5P+ksKY9i8hm1Sncg6NL1h3oEl
         OsrLNLWO2NcCwOA8f6hK30Aq3oLidJSMsiQvuIh+xrCxIY5gvF1Rol7r31jBSmBSekhe
         oj8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=+4VxQ3E1SMf3fqpPxA59SXnFTIYnqNYQQfNHAF4XRGw=;
        b=OxZuvJE/gZdRSDT9iDNqJgTGs4+m9F4gYR1Zzu30eolRSP5FT4y08FugCbjecd7Jr+
         Mbt3uovSwQ9CQGowXreGC4aQhVGhMIzUSCIOhZW75sUNn4+QDt40255RnAF/Ka+oaY5n
         GaxUSdE7/wslX823SThM22ot3etpZ7Th24IkZVH9PGcbe2OQTZZupGvMAoTVNwsHax2E
         8uHwheQEcfs0CFaGE7HTj/pU49+/sVGlGFWRSf8iYLkiocycC3s68Htd+I0qO51vlt+d
         zUjY4vyKsFljDva3+qxxXfcdHM6XbI8WOt/fsAiVnfg7RTkVEBndBw4McseaA1tTCPCu
         IwpQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=n09KqYny;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.67.41 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway20.websitewelcome.com (gateway20.websitewelcome.com. [192.185.67.41])
        by mx.google.com with ESMTPS id g26si1995723otk.221.2020.11.20.11.02.31
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Nov 2020 11:02:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.67.41 as permitted sender) client-ip=192.185.67.41;
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
	by gateway20.websitewelcome.com (Postfix) with ESMTP id 29F59400D34C2
	for <usb-storage@lists.one-eyed-alien.net>; Fri, 20 Nov 2020 12:59:13 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id gBfzkngEGuDoAgBfzkStyK; Fri, 20 Nov 2020 13:02:31 -0600
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:52198 helo=[192.168.15.4])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <gustavo@embeddedor.com>)
	id 1kgBfw-0000VH-WA; Fri, 20 Nov 2020 13:02:29 -0600
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: Joe Perches <joe@perches.com>, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, linux-kernel@vger.kernel.org
Cc: alsa-devel@alsa-project.org, amd-gfx@lists.freedesktop.org,
 bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org,
 cluster-devel@redhat.com, coreteam@netfilter.org,
 devel@driverdev.osuosl.org, dm-devel@redhat.com, drbd-dev@lists.linbit.com,
 dri-devel@lists.freedesktop.org, GR-everest-linux-l2@marvell.com,
 GR-Linux-NIC-Dev@marvell.com, intel-gfx@lists.freedesktop.org,
 intel-wired-lan@lists.osuosl.org, keyrings@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, linux-acpi@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 linux-block@vger.kernel.org, linux-can@vger.kernel.org,
 linux-cifs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-geode@lists.infradead.org,
 linux-gpio@vger.kernel.org, linux-hams@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-i3c@lists.infradead.org,
 linux-ide@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-input@vger.kernel.org, linux-integrity@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-mm@kvack.org,
 linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-security-module@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org,
 nouveau@lists.freedesktop.org, op-tee@lists.trustedfirmware.org,
 oss-drivers@netronome.com, patches@opensource.cirrus.com,
 rds-devel@oss.oracle.com, reiserfs-devel@vger.kernel.org,
 samba-technical@lists.samba.org, selinux@vger.kernel.org,
 target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 usb-storage@lists.one-eyed-alien.net,
 virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org,
 x86@kernel.org, xen-devel@lists.xenproject.org,
 linux-hardening@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda
 <ojeda@kernel.org>, Kees Cook <keescook@chromium.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <3e0bbb1644fe53d79322c2feb28ccaf3e20c0e94.camel@perches.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 AP7RWS474w==
Message-ID: <9f986394-125a-81f7-7696-fe1a9f4eb4f5@embeddedor.com>
Date: Fri, 20 Nov 2020 13:02:34 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <3e0bbb1644fe53d79322c2feb28ccaf3e20c0e94.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.one-eyed-alien.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1kgBfw-0000VH-WA
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.4]) [187.162.31.110]:52198
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 68
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=n09KqYny;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.67.41 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 11/20/20 12:28, Joe Perches wrote:
> On Fri, 2020-11-20 at 12:21 -0600, Gustavo A. R. Silva wrote:
>> Hi all,
>>
>> This series aims to fix almost all remaining fall-through warnings in
>> order to enable -Wimplicit-fallthrough for Clang.
>>
>> In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
>> add multiple break/goto/return/fallthrough statements instead of just
>> letting the code fall through to the next case.
>>
>> Notice that in order to enable -Wimplicit-fallthrough for Clang, this
>> change[1] is meant to be reverted at some point. So, this patch helps
>> to move in that direction.
> 
> This was a bit hard to parse for a second or three.
> 
> Thanks Gustavo.
> 
> How was this change done?

I audited case by case in order to determine the best fit for each
situation. Depending on the surrounding logic, sometimes it makes
more sense a goto or a fallthrough rather than merely a break.

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/9f986394-125a-81f7-7696-fe1a9f4eb4f5%40embeddedor.com.

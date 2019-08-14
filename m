Return-Path: <usb-storage+bncBCA372OYYQMRBO6YZ3VAKGQEKVDFOWA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9CF8CBFD
	for <lists+usb-storage@lfdr.de>; Wed, 14 Aug 2019 08:38:20 +0200 (CEST)
Received: by mail-ot1-x348.google.com with SMTP id o21sf26462600otj.7
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 23:38:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565764667; cv=pass;
        d=google.com; s=arc-20160816;
        b=z8q2KY5Y7Ggv6XU2w/9TO5yV29YpQxRGXU5IW3ICVZpNkDmnrLDPzonJwtfMqgg5o1
         Xp+GTHwRx3TFTfvB5fMSgMMvJ6jpipF9jx1aw2ZBwVoHZEHiQaR2CDrrdave9zWtJGVN
         Kb/IZwZWWhpvRz5auyaWye6YBxwNlFndhIMeWQI/krxram390cdw0siDYPTS5Gp1cLep
         76kNXMb6T7IyjsqmmovE9ov1rFPy6LVgPa3t4+uLO9lkWFTXpsWnHoyo5YFaycK7oY5K
         oqv/6+VNBLVFGO/YignyUFsAbuQE8W6FbwYqQhM9qLTRIyeQ6bzgVXeJ+1JIN1nxHNb5
         vfWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=IXyut/gCOuK4XJMyQ65UhN+B7BYutrnvpvxKIQl5HpI=;
        b=kVQPbRHU73pYRitL9M/AZwwQNOYHbGY/vcj5bAhBCJnLIiW3Nx/9A+kvl02D1ghapB
         D3RBpNtAvYxMFJKr+x7rs+w+ImXLsVq0LRpW2UYnkATdYYcoUwj7IBwKShCN6HiHyO9q
         FH/5H8v2e2E5SldZk2J5aaEd9MDcjPGlPxjNpJzDLCYeZnq2nw6N58jFbH22z+IGLp4N
         jLOHKt9FvEYwaxjjhIzLqtrmIdCheHUtEHYx4bJ5DvQRNog21tWHdF0XIZsrOG5gyrvc
         nWOuxJTswo39tVmZPqO1eX2xIpUr8jYbZpEeU4O7F+J7Qh/J1gkJuhMVsT+0WAEFnAcy
         lJyw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Gr/yUIA7";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IXyut/gCOuK4XJMyQ65UhN+B7BYutrnvpvxKIQl5HpI=;
        b=cGCXltiVJW6K+tCjo1nuZSg8Qnih2tHsL9DSmd14vSeTDl7v6Fy8/KXDw3qGFhevIk
         GXkxrNvYHQ1QdLQqOnkplorLkUNs9eO1PSeAuNm6Mk2WhqkrQFoDdHjMVrukvJrU5ISK
         QZk8Np2kM+PctgewFKgwPNAkhLw1mZlPOmZrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IXyut/gCOuK4XJMyQ65UhN+B7BYutrnvpvxKIQl5HpI=;
        b=oNiWUA6UEebu+vLjejzOfGbDfIz+XcGd9NqL2TvwdOiwPs2/lAX7wymYbkINj7gVgK
         PZx6HYMQE+0XkoYL7Glm1mcELKiXWArvLgEZwWLHt2Ef2XsPaCKKGTL3NEwInYB8QaLY
         sAfrdSH8RjnzZODqqNlJI1ymcqIpyWROKyKBKiCvaYO6gKlWH8lMRXf26UquP+ZnU0oP
         v6z+9EbV4M3xK8Jb9/JrKHjEihAnMoPlOwiMUyXNDQj8LWKOGtPXHCqC17fB2uFxPUDV
         S0pV9xQ0Bc9xzLD/P4lIgmXzv25QOMbaHy9ZAojorhyGaIZwCn0zS/LJck9YHSL0g4IJ
         eHLw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUYmXEC4lEYu9rB/M1UtRzF9I2ON6GAQJGZ1mmmStQdPbqjjaQt
	/leUJlTdh8R659F9JIgJDia3nQ==
X-Google-Smtp-Source: APXvYqzFIniO0iNKRQQy4or/kgaL7XcdY/QcjK5GCxO7HFyYEq7gwa1/lXBgptpKGub3obIzV6P9iA==
X-Received: by 2002:a05:6808:3d5:: with SMTP id o21mr3987962oie.108.1565764667433;
        Tue, 13 Aug 2019 23:37:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:2489:: with SMTP id z9ls199761ota.9.gmail; Tue, 13 Aug
 2019 23:37:47 -0700 (PDT)
X-Received: by 2002:a05:6830:2094:: with SMTP id y20mr12694086otq.36.1565764667191;
        Tue, 13 Aug 2019 23:37:47 -0700 (PDT)
Received: by 2002:a05:6808:991:0:0:0:0 with SMTP id a17msoic;
        Tue, 13 Aug 2019 23:36:29 -0700 (PDT)
X-Received: by 2002:a17:902:6847:: with SMTP id f7mr40425187pln.311.1565764589402;
        Tue, 13 Aug 2019 23:36:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565764589; cv=none;
        d=google.com; s=arc-20160816;
        b=h2/uYKNQwAUi2bd1TXbgHg6TQsAwxC3Yk6cp5dBK8iNH3EGqfUESMaCfzAqC3eZFpi
         lJG6y4/C+aJl5OxW86G1zDG0+tiOSL5CAAidmXVNvkkxkhFeQa/iVB2/c2K3HwJikjfD
         MGaYEXn6jam6GgDu59LEudrBMYybqoFA7U67wv13VmVeUw+2S+3u7hQRjYAapMAw8E+Y
         /gGd9bEpjUgPemuGF3on4y1PzU1Oy88U7kPs60DHaif9IWqz5+Ps+0MuPmQiAuTGhjJ9
         xa8HN7S7uAo7yTBngI4uN8jdBwRq7wWIOIKiWi42xumCCGenoAP577DjpQkzmxhmBq99
         uORg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=V2ZJmMM7eBUrb1Y12nRIIaugrWodscFeaE9AP4JG/Zg=;
        b=sFTpCM+mwIFf7vl9tZg8UPO+Zkxxw5LIWmE9R/9AtrJWetP9EWc5o0KkQVcY1EDpEf
         vf34o6wjD5PeZdmwpwDGiulywoQZwXz6PIoa1wtMbWDFtVbkB14C9xIGeVNHLnqMCp+D
         waKMHhtMnO8E/yWxFV88GGSwZXNG671FiB0hOjpGPMC6Rwos2GbjzmLVUTEV4427ViSP
         MWy05gaLim7WYq6X0xRuYVRzp8/Mdwbtx9R4hQGh5Ynf+mqsTVhEmqTeTFGfbFJzshiy
         /nM/2wwVaFdaPMt0pIHcKW1GLkcgU+kmmaqGDU0Q7+WltwXWL5NwlfRBGJV0HgCmUsH4
         yr1Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Gr/yUIA7";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id m133sor2867158pga.10.2019.08.13.23.36.29
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 23:36:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a63:89c2:: with SMTP id v185mr37393202pgd.241.1565764588977;
        Tue, 13 Aug 2019 23:36:28 -0700 (PDT)
Received: from himanshu-Vostro-3559 ([103.77.43.147])
        by smtp.gmail.com with ESMTPSA id j15sm109471223pfr.146.2019.08.13.23.36.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 13 Aug 2019 23:36:27 -0700 (PDT)
Date: Wed, 14 Aug 2019 12:06:11 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, maco@android.com,
	kstewart@linuxfoundation.org, linux-m68k@vger.kernel.org,
	oneukum@suse.com,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	usb-storage@lists.one-eyed-alien.net, hpa@zytor.com,
	joel@joelfernandes.org, sam@ravnborg.org, cocci@systeme.lip6.fr,
	linux-arch@vger.kernel.org, linux-scsi@vger.kernel.org,
	x86@kernel.org, lucas.de.marchi@gmail.com, mingo@redhat.com,
	geert@linux-m68k.org, stern@rowland.harvard.edu,
	kernel-team@android.com, sspatil@google.com, arnd@arndb.de,
	linux-kbuild@vger.kernel.org, Nicolas Palix <nicolas.palix@imag.fr>,
	jeyu@kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	tglx@linutronix.de, michal.lkml@markovi.net,
	gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
	sboyd@codeaurora.org, Nicolas Ferre <nicolas.ferre@microchip.com>,
	maco@google.com, pombredanne@nexb.com,
	"David S. Miller" <davem@davemloft.net>,
	linux-modules@vger.kernel.org
Subject: [usb-storage] Re: [Cocci] [PATCH v2 08/10] scripts: Coccinelle script
 for namespace dependencies.
Message-ID: <20190814063611.GA22387@himanshu-Vostro-3559>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-9-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813121733.52480-9-maennich@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: himanshujha199640@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Gr/yUIA7";       spf=pass
 (google.com: domain of himanshujha199640@gmail.com designates 209.85.220.65
 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Aug 13, 2019 at 01:17:05PM +0100, Matthias Maennich wrote:
> A script that uses the '<module>.ns_deps' file generated by modpost to
> automatically add the required symbol namespace dependencies to each
> module.
> 
> Usage:
> 1) Move some symbols to a namespace with EXPORT_SYMBOL_NS() or define
>    DEFAULT_SYMBOL_NAMESPACE
> 2) Run 'make' (or 'make modules') and get warnings about modules not
>    importing that namespace.
> 3) Run 'make nsdeps' to automatically add required import statements
>    to said modules.
> 
> This makes it easer for subsystem maintainers to introduce and maintain
> symbol namespaces into their codebase.
> 
> Co-developed-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Matthias Maennich <maennich@google.com>
> ---

[]

>  MAINTAINERS                                 |  5 ++
>  Makefile                                    | 12 +++++
>  scripts/Makefile.modpost                    |  4 +-
>  scripts/coccinelle/misc/add_namespace.cocci | 23 +++++++++
>  scripts/nsdeps                              | 54 +++++++++++++++++++++
>  5 files changed, 97 insertions(+), 1 deletion(-)
>  create mode 100644 scripts/coccinelle/misc/add_namespace.cocci
>  create mode 100644 scripts/nsdeps

[]

> +if [ "$SPATCH_VERSION_NUM" -lt "$SPATCH_REQ_VERSION_NUM" ] ; then
> +    echo 'spatch needs to be version 1.06 or higher'

Nitpick: 1.0.6

> +    exit 1
> +fi


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190814063611.GA22387%40himanshu-Vostro-3559.

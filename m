Return-Path: <usb-storage+bncBCUJ7YGL3QFBBQX7ZPVAKGQEVPGUQHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id D0ECD8C07B
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 20:21:55 +0200 (CEST)
Received: by mail-pl1-x645.google.com with SMTP id g9sf3342506plo.21
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 11:21:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565720514; cv=pass;
        d=google.com; s=arc-20160816;
        b=D0F82vkzGIsukGTz2jH4fNPQ2k2Q2MJZN7m+Z1GYvURE434pXP+Gwf+yQZlGb5zGK2
         YNxmqLaxacVbZbN1nppZFtFKUb60cS1P8hJbgP3TRycsF+2wkfdu2qG+392N1g+tO3+T
         xlyh+4dX+6IA+K8CPQUapHc6HATmOL7+z+bJDVvnjz8FvgGvivkgyB48NmPtTmvgYkES
         PezyWxUBLmFYiRpOrJWlJR4rc9Yd3iNgA/e10ti0UpNaRFwc7ezScxElsle959Uwc29p
         gMDJixrmyWF82ShjP2zFsRt8UYTXXnnHAi8aIa3qxlXyAgtxMquQaUOrPv6DnHV2gnop
         7gag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=GYCQtIgijkVGsv8jHqz6u/i6sbYG5iyqfoWY98tqApU=;
        b=WuHFDIEb+8UzmLBVRpqMSnjSBEaX12esfmgrQkEX+ZfcGNBlVQyL7nCh+rfWWDTRBY
         zzaZvllh7JhdyIWNFd449gMmDQJCe51PPGtMRkyI+HLqvLGo30v+oGaNT4FvivYmPU7c
         BFM6h8VTjTYup57XzSpnlYq+KAhNO8fbN5LFqHrCiTMsQ/5ZIHhuG+BiZubpm9FBxVAy
         BwQ/qzqOq/ZjEQvdyxwzelwsnUzVV4oLAI/Wy9zGaYMTeiW30ljE8U+DzWgc+d7yBoqs
         C+atNAjY7Rw6w78t7oFN1frNxvBzziNoN6WjSTJqWbI+lmAKDQcZegrsFW4YzzuBvnie
         w3Gg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MgmMjKHQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GYCQtIgijkVGsv8jHqz6u/i6sbYG5iyqfoWY98tqApU=;
        b=TY245C0UNtkVNE5h6VHDjkpVoou6rJ+BF0FwFT7nxNKjnoYC1XVQ3zEGQ4YBO93Ehi
         qJx4OENnDQ70BcC6Lu6tC/2xDFN0AeQeMCGdTdtkVamRlg0+z+dixy9FLghI1PAS8YGE
         iWWilg08c3pD+qHZzEGZgeDqeU4CEM8UvYQC0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GYCQtIgijkVGsv8jHqz6u/i6sbYG5iyqfoWY98tqApU=;
        b=bmJ0AoPZTKhatTetD6apgPw2q5SNmCNdMFxcX9l5CKUE5sL2EoEXtMKCmyKpQz8MTx
         FPHqK7vnacJJ4dER7wFIgtAr5cacDzSpOUG0N/IT/wkdJxt1pPW3q67hW+EN4dxP24WV
         ZbfTfL0tZDL2Gfj3mHPn0yz55ov1MP715hdt0n+Cl0DHFOQiTnV3eXtquDCnxKE/LPDS
         o+RCl59ZGliRDoNxvIk3887p2f2PwEqUKbJIVrl0WVoDpditcrqbyTVcxoGNAuPdlDX4
         XhF7ImWgrZUoO3VrYiqKiM9Grxru8ntvyUTz6xRG64Rp2f1HvLMq6fLYWGNTpQcPir3C
         PQxw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUUzFGGRncPn+vX/PWByzp8b4EzoiO/fkZ/QosgZeTQWi0M8WT+
	F60c/E1RHsd4qQMnE1KO419Kyw==
X-Google-Smtp-Source: APXvYqy9rnylQUrsGLrgTsDD2Bg7q8KSFP4GgdIS2mR9WSnDr1Gfy+xVhK1wKmLl4Ke7rIPS9+T5zw==
X-Received: by 2002:a17:90b:f12:: with SMTP id br18mr3236607pjb.127.1565720514307;
        Tue, 13 Aug 2019 11:21:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:409:: with SMTP id 9ls1498193ple.14.gmail; Tue, 13
 Aug 2019 11:21:53 -0700 (PDT)
X-Received: by 2002:a17:90a:fa82:: with SMTP id cu2mr2180511pjb.85.1565720513915;
        Tue, 13 Aug 2019 11:21:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565720513; cv=none;
        d=google.com; s=arc-20160816;
        b=TTbUHCG7/eVOLY5TtoGVfZ4SujM0M4O2Nk6aDXmMIluYoQaPb0icBKeEXRJDEtEgBi
         AyV/p4y4G5uCzS2B4mJ+X8+TSChyrzqo3zugA1tjv1Tn3W2FmYVs2YMgrx3NYdAqk0lc
         JrFGaUyGj9aackDISuyWby3eDqeKpgU0uNyirEZBXqOnA7BpJhypPyZGd+SOdt9v0GlQ
         6QAl/njJKqx7oG4D9SKr+ENmH29xOY9Xn7/XLkzysWyJSsxnIo8Fwet7e7AiHWOMdYTT
         67GsuMflGarnbRq9K2j7kcTZx7V3p3yQUCOBFxZBAeR/6nHbg7YNjIYhgdpoKnyt55w3
         m4aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7JAwVhkJaXYza20kq1IY04WUkiotOfUKtesyAxRk2lo=;
        b=m61QG+iqOR+edn1wnNF6XLakgcTM9N6TzbavnhE0gwjzJC26zvupq98v/PQ5u+jH5O
         7CypSEsC5AJFPozvpN7gKtSaTew6YDifH1jPE8/WM+xtvH7rpr+xdEyF5JAzXr9Kmatm
         qNj1QIkHMzoX8jdKF4bzlP0lrIuW8moQOaSjQGCd6PZ+wyVLVekNuEwJ054V8AAqFJvO
         Ao2W60v7YZYL0GDOvlnQlAmEw1s2rF/OCxyMCdzftHlPidqzs8wPbZ4u6ZkPevfhjACR
         bFaZhK5CaPaNJPO3aXiai8ivMdiThTs1adZQ8ZvewR+O7gweTuA8iNDTDSfc6qaCdd7v
         ojiw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MgmMjKHQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id j36si59565563plb.77.2019.08.13.11.21.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 11:21:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 18D1620578;
	Tue, 13 Aug 2019 18:21:53 +0000 (UTC)
Date: Tue, 13 Aug 2019 20:21:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, maco@android.com, kernel-team@android.com,
	arnd@arndb.de, geert@linux-m68k.org, hpa@zytor.com, jeyu@kernel.org,
	joel@joelfernandes.org, kstewart@linuxfoundation.org,
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	lucas.de.marchi@gmail.com, maco@google.com, michal.lkml@markovi.net,
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com,
	sam@ravnborg.org, sboyd@codeaurora.org, sspatil@google.com,
	stern@rowland.harvard.edu, tglx@linutronix.de,
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
	yamada.masahiro@socionext.com
Subject: [usb-storage] Re: [PATCH v2 07/10] modpost: add support for
 generating namespace dependencies
Message-ID: <20190813182151.GF2378@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-8-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813121733.52480-8-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MgmMjKHQ;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Tue, Aug 13, 2019 at 01:17:04PM +0100, Matthias Maennich wrote:
> This patch adds an option to modpost to generate a <module>.ns_deps file
> per module, containing the namespace dependencies for that module.
> 
> E.g. if the linked module my-module.ko would depend on the symbol
> myfunc.MY_NS in the namespace MY_NS, the my-module.ns_deps file created
> by modpost would contain the entry MY_NS to express the namespace
> dependency of my-module imposed by using the symbol myfunc.
> 
> These files can subsequently be used by static analysis tools (like
> coccinelle scripts) to address issues with missing namespace imports. A
> later patch of this series will introduce such a script 'nsdeps' and a
> corresponding make target to automatically add missing
> MODULE_IMPORT_NS() definitions to the module's sources. For that it uses
> the information provided in the generated .ns_deps files.
> 
> Co-developed-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Matthias Maennich <maennich@google.com>
> ---
>  scripts/mod/modpost.c | 61 +++++++++++++++++++++++++++++++++++++++----
>  scripts/mod/modpost.h |  2 ++
>  2 files changed, 58 insertions(+), 5 deletions(-)

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813182151.GF2378%40kroah.com.

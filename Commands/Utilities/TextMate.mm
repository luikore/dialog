#import "TextMate.h"

@interface NSObject (OakTextViewPrivate)
- (id)insertSnippetWithOptions:(NSDictionary*)options;
@end

void insert_text (NSString* someText)
{
	if(id textView = [NSApp targetForAction:@selector(insertText:)])
		[textView insertText:someText];
}

void delete_backward ()
{
	if(NSTextView* textView = [NSApp targetForAction:@selector(insertText:)]) {
        [textView deleteBackward:nil];
    }
}

void insert_snippet (NSString* aSnippet)
{
	if(id textView = [NSApp targetForAction:@selector(insertSnippetWithOptions:)])
		[textView insertSnippetWithOptions:[NSDictionary dictionaryWithObject:aSnippet forKey:@"content"]];
}
